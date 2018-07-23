package com.tatva.dao;

import java.util.List;

import com.tatva.model.EmpBean;

public interface EmployeeDao {
	public void insertEmployee(EmpBean empbean);

	public List<EmpBean> listEmployees();

	public EmpBean getEmployeeId(int id);

	public void updateEmployee(EmpBean empbean);

	public void deleteEmployee(int id);

	public int registerUser(EmpBean empbean);

	public EmpBean loginUser(EmpBean empbean);
	
	public EmpBean forgotpwdEmp(EmpBean empbean);

	public void forgotpwdEmp(String to, String subject, String msg);

	public boolean existUser(String userName);

}
