/*package com.tatva.model;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.tatva.model.Employee;
import com.tatva.model.Address;


public class Main {
	
	private static SessionFactory factory;
	public static void main(String[] args) {
		
		try {
			factory = new Configuration().configure("hibernate.cfg.xml")
					.buildSessionFactory();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		Session session = factory.openSession();
	
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Address address1 = new Address("sgd", "fdgh", "dfgh", "sdgs");
			Address address2 = new Address("gsg", "sdg", "sdg", "sdg");
			Address address3 = new Address("sdg", "sdg", "sdg", "sdg");
			
			Employee e1 = new Employee("as","sd","21211","male","10","fdf", address1);
			Employee e2 = new Employee("th","sdg","42453","male","12","footgsger", address2);
			Employee e3 = new Employee("hyr","zx","7554","female","10","fgdfg", address3);
			session.save(e1);
			session.save(e2);
			session.save(e3);
			transaction.commit();
		} catch (HibernateException e) {
			transaction.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}

	}

}
*/