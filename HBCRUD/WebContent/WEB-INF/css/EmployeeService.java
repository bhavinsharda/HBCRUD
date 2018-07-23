package com.tatva.service;

import java.util.List;

import com.tatva.model.EmpBean;

public interface EmployeeService {
	public void insertEmployee(EmpBean empbean);

	public List<EmpBean> listEmployees();

	public EmpBean getEmployeeId(int id);

	public void updateEmployee(EmpBean empbean);

	public void deleteEmployee(int id);

	public int registerUser(EmpBean empbean);

	public EmpBean loginUser(EmpBean empbean);

	public EmpBean forgotpwdEmp(EmpBean empbean);

	public void newpwdEmp(String to, String subject, String msg);

	public boolean existUser(String userName);

	/* public Role getRoleByRoleName(String role_name); */

	/*
	 * public List<Country> listCountry();
	 * 
	 * public List<State> loadState(Integer country_id);
	 * 
	 * public List<City> loadCity(Integer state_id);
	 */

}
