package com.tatva.dao;

import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tatva.model.EmpBean;

@Repository
public class EmployeeDaoImpl implements EmployeeDao {

	@Autowired
	private SessionFactory sessionFactory;

	/* insert method */
	@Override
	public void insertEmployee(EmpBean empbean) {
		Session session = this.sessionFactory.openSession();
		
		session.saveOrUpdate(empbean);

	}

	/* update method */

	@Override
	public void updateEmployee(EmpBean empbean) {
		Session session = this.sessionFactory.getCurrentSession();
		
		try {
			session.update(empbean);
	
		} catch (Exception e) {
		}
	}

	/* for get employee id edit method */

	@Override
	public EmpBean getEmployeeId(int id) {
		Session session = this.sessionFactory.openSession();
		

		EmpBean emp = (EmpBean) session.get(EmpBean.class, id);

		return emp;
	}

	/* delete method */
	@Override
	public void deleteEmployee(int id) {
		Session session = this.sessionFactory.openSession();
		
		EmpBean emp = (EmpBean) session.get(EmpBean.class,id);
		// emp.get
		if (null != emp) {
			session.delete(emp);
	
		}
	}

	/* view method */

	@Override
	public List<EmpBean> listEmployees() {
		Session session = this.sessionFactory.openSession();
		

		Criteria cr = session.createCriteria(EmpBean.class, "empbean")
				.createAlias("empbean.emp", "emp")
				.add(Restrictions.eq("emp.designation", "doctor"));

		@SuppressWarnings("unchecked")
		List<EmpBean> listUsers = cr.list();

		return listUsers;
	}

	/* register method */
	@Override
	public int registerUser(EmpBean empbean) {
		Session session = this.sessionFactory.openSession();
		

		int status = 0;
		
		try {
			status = (int) session.save(empbean);
	
			if (status > 0) {
		

			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return status;
		/*
		 * Session session = sessionFactory.getCurrentSession(); int status=0;
		 * status=(int) session.save(empbean); return status;
		 */
	}


	

	/* login method */

	@Override
	public EmpBean loginUser(EmpBean empbean) {
		
		String loginQuery = "from EmpBean where userName= :userName and password= :password";
		
		Session session = this.sessionFactory.openSession();
		
		Query query = session.createQuery(loginQuery);
		query.setParameter("userName", empbean.getUserName());
		query.setParameter("password", empbean.getPassword());

		EmpBean um = null;
		@SuppressWarnings("unchecked")
		List<EmpBean> list = query.list();
		if (list.size() > 0) {
			um = list.get(0);
		}
		return um;
	}

	@Override
	public EmpBean forgotpwdEmp(EmpBean empbean) {
		String loginQuery = "from EmpBean where email= :email";

		Session session = this.sessionFactory.openSession();

		Query query = session.createQuery(loginQuery);
		query.setParameter("email", empbean.getEmail());
		
		EmpBean um = null;
		@SuppressWarnings("unchecked")
		List<EmpBean> list = query.list();
		if (list.size() > 0) {
			um = list.get(0);
		}
		return um;
	}

	@Override
	public void forgotpwdEmp(String to, String subject, String msg) {
		final String user="bhavin.sharda@internal.mail";//change accordingly  
		final String pass="tatva123";
		final String host="192.168.0.6";
		final String port="25";
		  
		//1st step) Get the session object    
		Properties props = new Properties();  
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", port);//change accordingly  
		props.put("mail.smtp.auth", "true");  
		  
		javax.mail.Session session = javax.mail.Session.getDefaultInstance(props,  
		 new javax.mail.Authenticator() {  
		  protected PasswordAuthentication getPasswordAuthentication() {  
		   return new PasswordAuthentication(user,pass);  
		   }  
		});  
		//2nd step)compose message  
		try {  
		 MimeMessage message = new MimeMessage(session);  
		 message.setFrom(new InternetAddress(user));  
		 message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
		 message.setSubject(subject);  
		 message.setText(msg);  
		   
		 //3rd step)send message  
		 Transport.send(message);  
		  
		 System.out.println("Done");  
		  
		 } catch (MessagingException e) {  
		    throw new RuntimeException(e);  
		 }  
		
	}

	@Override
	public boolean existUser(String userName) {
		
		Session session = this.sessionFactory.openSession();
		  Transaction tr = session.beginTransaction();
		  boolean flag = false;
		  @SuppressWarnings("unchecked")
		  List<EmpBean> list = session.createQuery("from EmpBean where userName='"+userName+"'").list();
		  tr.commit();
		  if (list.size() > 0) {
		   flag = false;
		  }
		  else
		  {
		   flag= true;
		  }
		  return flag;
		 }
		
	}

	
	

