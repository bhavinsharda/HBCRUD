<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- controller comments-----
/* country method */

	/*
	 * @RequestMapping(value="/Country",method=RequestMethod.GET) public
	 * ModelAndView listCountry() {
	 * 
	 * 
	 * ModelAndView mav = new ModelAndView(); mav.addObject("listCountry",
	 * employeeService.listCountry());
	 * 
	 * return new ModelAndView("redirect:/addUser"); }
	 * 
	 * @RequestMapping("/State")
	 * 
	 * public List<State> loadState(@RequestParam(value = "country_id", required
	 * = true) Integer country_id) throws IllegalStateException {
	 * 
	 * //Specify the returning object you want here return
	 * employeeService.loadState(country_id); }
	 * 
	 * @RequestMapping("/City")
	 * 
	 * public List<City> loadCity(@RequestParam(value = "state_id", required =
	 * true) Integer state_id) throws IllegalStateException {
	 * 
	 * //Specify the returning object you want here return
	 * employeeService.loadCity(state_id); }
	 */
	/*	 Add Address Page request 
	@RequestMapping("/addAddress")
	public ModelAndView addressform() {
		return new ModelAndView("addAddress", "command", new Address());
	}
*/
	/*
	 * country page request
	 * 
	 * @RequestMapping("/Country") public ModelAndView countryform() { return
	 * new ModelAndView("Country", "command", new Country()); }
	 * 
	 * state page request
	 * 
	 * @RequestMapping("/State") public ModelAndView stateform() { return new
	 * ModelAndView("State", "command", new State()); }
	 * 
	 * city page request
	 * 
	 * @RequestMapping("/City") public ModelAndView cityform() { return new
	 * ModelAndView("City", "command", new City()); }
	 */
	/*
	 * @RequestMapping("/viewUser") public ModelAndView list() { List<Employee>
	 * empList = employeeService.listEmployees(); List<Address> addressList =
	 * employeeService.listAddress(); ModelAndView mv = new ModelAndView();
	 * mv.setViewName("viewUser"); mv.addObject("emplist", "empList");
	 * mv.addObject("addresslist", "addressList"); return mv; }
	 */
	/* get id for edit method */
	
	/*if(empbean.getRole().getRole_name().equalsIgnoreCase("admin")){
	response.sendRedirect("viewUser");
}else{
	response.sendRedirect("addUser");
}

int id = Integer.parseInt(request.getParameter("id"));
session.setAttribute("id", id);
*/



/*	@RequestMapping("/sample")
public ModelAndView listEmploye(HttpServletRequest request,Employee emp,HttpSession session) {
int id = Integer.parseInt(request.getParameter("id"));

session.getAttribute("id");


int id= Integer.parseInt(request.getParameter("id"));
List<Employee> empList = employeeService.listEmployee(id);

ModelAndView mav = new ModelAndView("sample", "emplist", empList);
return mav;
}*/



/*	@RequestMapping(value = "/profileUser/{id}", method = RequestMethod.GET)
public ModelAndView getEmployeeId1(@PathVariable int id) {
EmpBean empbean = employeeService.getEmployeeId1(id);
return new ModelAndView("profileUser", "command", empbean);
}

edit method 
@RequestMapping(value = "/profile", method = RequestMethod.POST)
public ModelAndView ModelAndView(@ModelAttribute("empbean") EmpBean empbean) {

return new ModelAndView("redirect:/profileUser");
}*/


	/*String role = empbean.getRole();
	System.out.println(role);

	String user = request.getParameter("userName");
	session.setAttribute("user", user);
	empbean = employeeService.loginUser(empbean);

	if (empbean.isValid()) {
		if (role.equals("admin"))
			response.sendRedirect("viewUser");
		else {
			response.sendRedirect("addUser");
		}
	} else {
		String msg = "Invalid Username or Password";
		request.getSession().setAttribute("msg", msg);
		response.sendRedirect("Login");
	}*/

dao implementation comments-----------



	/*@Override
	public Role getRoleByRoleName(String role_name) {
		String query = "from Role where role_name=:role_name";
		Session session = this.sessionFactory.openSession();
		Transaction tr=session.beginTransaction();
		Query queryObj = session.createQuery(query);
		queryObj.setParameter("role_name", role_name);
		
		Role roleObj = null;
		@SuppressWarnings("unchecked")
		List<Role> list = queryObj.list();
		tr.commit();
	
		roleObj = list.get(0);
		
		return roleObj;
	}
	}*/

	/*@Override
	public List<Employee> listEmployee(int id) {
		Session session = this.sessionFactory.openSession();
		  Transaction transaction = session.beginTransaction();



		  Employee emp=(Employee) session.load(EmpBean.class, new Integer(id));
		  int id1=emp.getId();
			@SuppressWarnings("unchecked")
			List<Employee> listUsers = session.createQuery("from Employee where id="+id1).list();
			 transaction.commit();
			return listUsers;
	}
	 */

	/*@Override
	public List<Country> listCountry() {
		Session session = this.sessionFactory.openSession();
		  Transaction transaction = session.beginTransaction();

		  @SuppressWarnings("unchecked")
			List<Country> listCountry = session.createQuery("from Country").list();
			 transaction.commit();
			return listCountry;

	}

	@Override
	public List<State> loadState(Integer country_id) {
		Session session = this.sessionFactory.openSession();
		  Transaction transaction = session.beginTransaction();
		  @SuppressWarnings("unchecked")
			List<State> loadState = session.createQuery("from State s where s.country_id=" + country_id + ")").list();
			 transaction.commit();
			return loadState;
	}

	@Override
	public List<City> loadCity(Integer state_id) {
		Session session = this.sessionFactory.openSession();
		  Transaction transaction = session.beginTransaction();
		  @SuppressWarnings("unchecked")
			List<City> loadCity = session.createQuery("from City c where c.state_id=" + state_id + ")").list();
			 transaction.commit();
			return loadCity;
	}        */



	/*	
		String getUserQuery = "from register where userName='"+username+"' and password='"+password+"' ";

		boolean more= session.createQuery(getUserQuery) != null;

			if (!more) {   
				empbean.setValid(false); 
			} 
			else if (more) {  
				empbean.setValid(true); 
				}
		return empbean;	}
	 */
	 /*String username=empbean.getUserName();
		String password=empbean.getPassword();
		String role=empbean.getRole();


		String r1 = "from EmpBean where role='"+role+"' ";
		System.out.println("logintime"+r1);



		String getUserQuery = "from EmpBean where userName='"+username+"' and password='"+password+"' and role='"+role+"' ";
		System.out.println(getUserQuery);

		 @SuppressWarnings("unchecked")
		List<EmpBean> userList = session.createQuery(getUserQuery).list();

		 if(userList.size() > 0){
			 empbean.setValid(true);
			   transaction.commit();
			  }
			  else{
				  empbean.setValid(false);
			  }

	return empbean;*/
	
	
	
	dao comments--------
	
	/*	public Role getRoleByRoleName(String role_name);*/
	
	/*public List<Country> listCountry();
	
	public List<State> loadState(Integer country_id);
	
	public List<City> loadCity(Integer state_id);*/
	
	
	
	edit page comments---
	
		<div class="form-group">
			<springform:label path="addressbean.street" class="col-sm-3">Street Name:</springform:label>
			<div class="col-sm-5">
			<springform:input type="text" class="form-control input-sm" name="street"
						placeholder="Enter Street Name" id="street" path="addressbean.street"/>
						 <div class="errorStreet"></div> 			
				</div>
				</div>

			<div class="form-group">
				<springform:label path="addressbean.city" class="col-sm-3">City Name:</springform:label>
	            <div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm" name="city"
						placeholder="Enter City Name" id="city" path="addressbean.city"/>
						 <div class="errorCity"></div> 
				<!-- 	<div class="errorDiv">Enter valid last Name</div> -->
				</div>
			</div>
					<div class="form-group">
				<springform:label path="addressbean.state" class="col-sm-3">State Name:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm" name="state"
						placeholder="Enter State Name" id="state" path="addressbean.state"/>
						<div class="errorState"></div>
						
				</div>
				</div>
			
			
			<div class="form-group">
				<springform:label path="addressbean.country" class="col-sm-3">Country Name:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm" name="country"
						placeholder="Enter Country Name" id="country" path="addressbean.country"/>
					<div class="errorCountry"></div>
					<!-- <div class="errorDiv">Enter valid Phone No.</div> -->
				</div>
				</div>
			
				<div class="form-group">
				<springform:label class="col-sm-3" path="countrybean">Country:</springform:label>
				<div class="col-sm-2">
					<springform:select class="form-control" id="Country" name="Country"
						path="countrybean">
						<c:forEach items="${empList}" var="Country">
							<option value="${countrybean.country_id}">${countrybean.country_id}</option>
						</c:forEach>
					</springform:select>
					<div class="errorCountry"></div>
				</div>

				<springform:label path="statebean" class="control-label col-sm-2">State:</springform:label>
				<div class="col-sm-2">
					<springform:select class="form-control" id="State" name="State"
				onchange="showCity(this.value)" path="statebean">
						
					</springform:select>
					<div class="errorState"></div>
				</div>
				
				
		<springform:label path="citybean" class="control-label col-sm-1">City:</springform:label>
				<div class="col-sm-2">
					<springform:select class="form-control" id="City" name="City" path="citybean">
			</springform:select>
					
						<div class="errorCity"></div>
				</div>
			</div>
				<div class="form-group">
					<springform:label path="country" class="col-sm-3">Country:</springform:label>
					<div class="col-sm-2">
						<%
							Class.forName("com.mysql.jdbc.Driver");
							java.sql.Connection con = DriverManager
									.getConnection(
											"jdbc:mysql://localhost:3306/spring_crud?autoReconnect=true&useSSL=false",
											"root", "root");
							Statement st = con.createStatement();
							ResultSet rs;
							rs = st.executeQuery(" select * from country");
						%>
						<springform:select class="form-control" id="country" name="country"
				onchange="showState(this.value)" path="country">
				<option value="-1">Select</option>
				<%
					while (rs.next()) {
				%>
				<option value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
				<%
					}
				%>
			</springform:select>

						<div class="errorCountry"></div>
					</div>


					<springform:label path="state" class="control-label col-sm-2">State:</springform:label>
		
					<div class="col-sm-2">
					<springform:select class="form-control" id="state" name="state"
							onchange="showCity(this.value)" path="state">
						</springform:select>
						<!-- <div class="errorDiv">select valid state</div> -->
						<div class="errorState"></div>
					</div>


					<springform:label path="city" class="control-label col-sm-1">City:</springform:label>
		<label class="control-label col-sm-1">City:</label>
		<div class="col-sm-2">
			<springform:select class="form-control" id="city" name="city" path="city">
			</springform:select>
						<div class="errorCity"></div>
					</div>

				</div>
				
				add page comments-----
				
				
				
<div class="form-group">
			<springform:label path="addressbean.street" class="col-sm-3">Street Name:</springform:label>
			<div class="col-sm-5">
			<springform:input type="text" class="form-control input-sm" name="street"
						placeholder="Enter Street Name" id="street" path="addressbean.street"/>
						 <div class="errorStreet"></div> 			
				</div>
				</div>

			<div class="form-group">
				<springform:label path="addressbean.city" class="col-sm-3">City Name:</springform:label>
	            <div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm" name="city"
						placeholder="Enter City Name" id="city" path="addressbean.city"/>
						 <div class="errorCity"></div> 
				<!-- 	<div class="errorDiv">Enter valid last Name</div> -->
				</div>
			</div>
					<div class="form-group">
				<springform:label path="addressbean.state" class="col-sm-3">State Name:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm" name="state"
						placeholder="Enter State Name" id="state" path="addressbean.state"/>
						<div class="errorState"></div>
						
				</div>
				</div>
			
			
			<div class="form-group">
				<springform:label path="addressbean.country" class="col-sm-3">Country Name:</springform:label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm" name="country"
						placeholder="Enter Country Name" id="country" path="addressbean.country"/>
					<div class="errorCountry"></div>
					<!-- <div class="errorDiv">Enter valid Phone No.</div> -->
				</div>
				</div>
				
				
		<div class="form-group">
				<springform:label class="col-sm-3" path="countrybean">Country:</springform:label>
				<div class="col-sm-2">
					<springform:select class="form-control" id="Country" name="Country"
						path="countrybean">
				<option value="-1">Select</option>
						<c:forEach items="${listCountry}" var="countrybean">
							<springform:option value="${countrybean.country_id}">${countrybean.country_id}</springform:option>
						</c:forEach>
					</springform:select>
					<div class="errorCountry"></div>
				</div>

				<springform:label path="statebean" class="control-label col-sm-2">State:</springform:label>
				<div class="col-sm-2">
			
					<springform:select class="form-control" id="State" name="State"
				onchange="showCity(this.value)" path="statebean">
							<springform:option value='-1'>Select</springform:option>
					</springform:select>
					<div class="errorState"></div>
				</div>
				
				
		<springform:label path="citybean" class="control-label col-sm-1">City:</springform:label>
				<div class="col-sm-2">
					<springform:select class="form-control" id="City" name="City" path="citybean">
						<springform:option value='-1'>Select</springform:option>
			</springform:select>
					
						<div class="errorCity"></div>
				</div>
			</div> 
			
			
			<div class="form-group">
				<label class="col-sm-3">Birth Date:</label>
				<div class="col-sm-5">
					<springform:input type="text" class="form-control input-sm" name="birthDate"
						placeholder="yyyy-mm-dd" id="bdate" path="birthDate"/>
						 <div class="errorBdate"> 
					<!-- <div class="errorDiv">Enter valid Birth date</div> -->
				</div>
			</div>
			</div> 

		
			
		 <div class="form-group">
				<label class="col-sm-3">Hobbies</label>
				<div class="col-sm-5">
				 <springform:input type="checkbox" name="hobby"  id="Sport" value="Sport" path="hobby" /> Sport<br>
				 <springform:input type="checkbox" name="hobby" id="Music" value="Music" path="hobby"/> Music<br>
				 <springform:input type="checkbox" name="hobby" id="Reading" value="Reading" path="hobby"/> Reading<br>
				 <springform:input type="checkbox" name="hobby" id="TV" value="TV" path="hobby"/> TV and Film
					
				</div>
			</div> --%>
</body>
</html>