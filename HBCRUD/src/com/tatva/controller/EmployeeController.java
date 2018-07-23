package com.tatva.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tatva.model.EmpBean;
import com.tatva.model.Employee;
import com.tatva.service.EmployeeService;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;

	/* Add page request */
	@RequestMapping("/addUser")
	public ModelAndView showform() {
		return new ModelAndView("addUser", "command", new Employee());
	}
	

	@RequestMapping("/profileUser")
	public ModelAndView profileform(Employee emp, HttpServletRequest request,
			HttpSession session) throws SQLException {

		return new ModelAndView("profileUser");
	}

	/* login page request */

	@RequestMapping("/Login")
	public ModelAndView loginform() {
		return new ModelAndView("login", "command", new EmpBean());
	}

	/* logout page request */
	@RequestMapping("/logout")
	public String logoutform(HttpServletResponse response, HttpSession session)
			throws IOException {

		session.getAttribute("user");
		session.invalidate();
		return "redirect:Login";
		
		

	}

/*	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public ModelAndView logout(HttpServletRequest request) {
		request.getSession().removeAttribute("user");
		request.getSession().invalidate();
		ModelAndView mv=new ModelAndView("login","command",new EmpBean());
		mv.addObject("msg1", "You are successfully Logged Out.");
		return mv;
	}*/
	/* register page request */

	@RequestMapping("/register")
	public ModelAndView registerform() {
		return new ModelAndView("register", "command", new EmpBean());
	}

	/* Forgot Password page request */

	@RequestMapping("/forgotpwd")
	public ModelAndView forgotpwdform() {
		return new ModelAndView("forgotpwd", "command", new EmpBean());
	}

	/* insert method */
	@RequestMapping(value = "/adduser", method = RequestMethod.POST)
	public ModelAndView insertEmployee(@ModelAttribute("emp") Employee emp,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response) throws IOException {
		EmpBean employee = (EmpBean) session.getAttribute("user");
		employee.setEmp(emp);

		employeeService.insertEmployee(employee);
		ModelAndView mv = new ModelAndView();
		if (emp != null) {
			mv.addObject("obj", emp);
		}
		mv.setViewName("profileUser");
		return mv;
	}

	
	
	
	
	/* register method */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute("empbean") EmpBean empbean,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response) throws IOException {
		/*
		 * Role role = employeeService.getRoleByRoleName("user");
		 * empbean.setRole(role);
		 */
		empbean.getRole().setRole_id(2);
		
 		int status = employeeService.registerUser(empbean);
		
		if (status > 0) {
			
			return "redirect:Login";

		} else {
			session.setAttribute("userR", empbean);
			String msg = "User alredy exist..try another";
			request.getSession().setAttribute("msg", msg);
			return "redirect:register";

		}

	}

	@RequestMapping(value = "/forgotpwd", method = RequestMethod.POST)
	public ModelAndView forgotpwd(EmpBean empbean, HttpServletRequest request,
			HttpSession session, HttpServletResponse response)
			throws IOException {

		empbean = employeeService.forgotpwdEmp(empbean);
		String to = empbean.getEmail();
		String subject = "Forgot password";
		String msg = "Username: " + empbean.getUserName() + " Password:"
				+ empbean.getPassword();

		employeeService.newpwdEmp(to, subject, msg);

		return new ModelAndView("redirect:/Login");

	}

	/* login method */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginUser(@ModelAttribute("empbean") EmpBean empbean,
			HttpServletRequest request, HttpSession session,
			HttpServletResponse response, Employee emp) throws SQLException,
			IOException {

		empbean = employeeService.loginUser(empbean);
		if (empbean != null) {
			session.setAttribute("user", empbean);
			if (empbean.getRole().getRole_name().equalsIgnoreCase("admin")) {
				if (empbean.getEmp() != null) {

					return "redirect:viewUser";

				} else {
					return "redirect:addUser";

				}

			} else {
				if (empbean.getEmp() != null) {

					return "redirect:profileUser";

				} else {
					return "redirect:addUser";

				}
			}
		} else {
			String msg = "Invalid Username or Password";
			request.getSession().setAttribute("msg", msg);
			return "redirect:Login";
		}

	}

	/* view method */
	@RequestMapping("/viewUser")
	public ModelAndView listEmployee() {

		List<EmpBean> empList = employeeService.listEmployees();

		ModelAndView mav = new ModelAndView("viewUser", "emplist", empList);
		return mav;
	}

	@RequestMapping(value = "/editemp/{id}")
	public ModelAndView getEmployeeId(@PathVariable int id) {
		EmpBean empbean = employeeService.getEmployeeId(id);
		return new ModelAndView("editUser", "command", empbean);
	}

	/* edit method */
	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public ModelAndView updateEmployee(EmpBean empbean) {
		employeeService.updateEmployee(empbean);
		return new ModelAndView("redirect:/viewUser");
	}

	@RequestMapping(value = "/editprofile/{id}")
	public ModelAndView getEmployeeId1(@PathVariable int id) {
		EmpBean empbean = employeeService.getEmployeeId(id);
		return new ModelAndView("editEmp", "command", empbean);
	}

	/* edit method */
	@RequestMapping(value = "/editsave1", method = RequestMethod.POST)
	public ModelAndView updateEmployee1(EmpBean empbean, HttpSession session) {
		employeeService.updateEmployee(empbean);
		session.removeAttribute("user");
		session.setAttribute("user", empbean);
		return new ModelAndView ("redirect:/profileUser");
	}

	/* delete method */
	@RequestMapping(value = "/deleteemp/{id}", method = RequestMethod.GET)
	public ModelAndView deleteEmployee(@PathVariable int id) {
		employeeService.deleteEmployee(id);
		return new ModelAndView("redirect:/viewUser");
	}
	
	@RequestMapping(value = "/checkExist/{userName}")
	public ModelAndView existUser(@PathVariable String userName, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		  PrintWriter out= response.getWriter();
		  boolean status=employeeService.existUser(userName);
		  if(status==false)
		  { 
		   out.println("<html>");
		   out.println("<body>");
		   out.println("<p style='color:red'>");
		   out.println("User already exists");
		   out.println("</p>");
		   out.println("</body>");
		   out.println("</html>");
		  }
		  else{
		   out.println("<html>");
		   out.println("<body>");
		   out.println("<p style='color:green'>");
		   out.println("Valid");
		   out.println("</p>");
		   out.println("</body>");
		   out.println("</html>");
		  }
		  return null;
		 }

}
