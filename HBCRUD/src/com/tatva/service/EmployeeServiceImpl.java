package com.tatva.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tatva.dao.EmployeeDao;
import com.tatva.model.EmpBean;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	private EmployeeDao employeeDao;
	
	/*	 insert method*/
	@Override
	public void insertEmployee(EmpBean empbean) {
		employeeDao.insertEmployee(empbean);
		
	}
	
	/*	 list method*/
	@Override
	public List<EmpBean> listEmployees() {
		return employeeDao.listEmployees();
	}

	/*	 find employee id for edit method*/
	@Override
	public EmpBean getEmployeeId(int id) {
		return employeeDao.getEmployeeId(id);
	}
	
	/*	 update method*/
	@Override
	public void updateEmployee(EmpBean empbean) {
		employeeDao.updateEmployee(empbean);
		
	}
	/*	 delete method*/
	@Override
	public void deleteEmployee(int id) {
		 employeeDao.deleteEmployee(id);
		
	}
	
	/*	 register method*/
	@Override
	public int registerUser(EmpBean empbean) {
		return employeeDao.registerUser(empbean);
	}
	
	/*	 login method*/

	@Override
	public EmpBean loginUser(EmpBean empbean){
		return employeeDao.loginUser(empbean);
	}

	@Override
	public EmpBean forgotpwdEmp(EmpBean empbean) {
		
		return employeeDao.forgotpwdEmp(empbean);
	}

	@Override
	public void newpwdEmp(String to, String subject, String msg) {
		employeeDao.forgotpwdEmp(to,subject,msg);
		
	}

	@Override
	public boolean existUser(String userName) {
		 return employeeDao.existUser(userName);
	}

	


	/*@Override
	public Role getRoleByRoleName(String role_name) {
		return employeeDao.getRoleByRoleName(role_name);
	}*/

	
	/*@Override
	public List<Country> listCountry() {
		return employeeDao.listCountry();
	}

	@Override
	public List<State> loadState(Integer country_id) {
		return employeeDao.loadState(country_id);
	}

	@Override
	public List<City> loadCity(Integer state_id) {
		return employeeDao.loadCity(state_id);
	}*/
	

}
