package com.tatva.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.tatva.model.EmpBean;

@WebFilter("/LogoutFilter")
public class LogoutFilter implements Filter {

	public void init(FilterConfig fConfig) throws ServletException {

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletResponse res = (HttpServletResponse) response;
		res.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP
																				// 1.1.
		res.setHeader("Pragma", "no-cache"); // HTTP 1.0.
		res.setDateHeader("Expires", 0); // Proxies.

		HttpSession session =((HttpServletRequest) request).getSession();
		   String uri = ((HttpServletRequest)request).getRequestURI();
		   EmpBean user=(EmpBean) session.getAttribute("user");

		   if(user==null){
		    if(uri.contains("addUser") || uri.contains("editUser") || uri.contains("viewUser") || uri.contains("profileUser") || uri.contains("editEmp")){
		    res.sendRedirect("Login");
		    }
		   }
		   chain.doFilter(request, response);
	}

	public void destroy() {
	}
}
