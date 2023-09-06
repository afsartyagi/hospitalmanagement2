package com.cetpa.repositories;

import java.util.*;

import org.hibernate.*;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.cetpa.models.Student;
@Repository
public class repository {
	private Session  session;
	private Transaction transaction;
	@Autowired
	public repository(SessionFactory  sessionFactory) {
		
		session=sessionFactory.openSession();
	     transaction=session.getTransaction();
	}
		public void insertrecord(Student student) {
			transaction.begin();
		session.save(student);
		transaction.commit();
		
	}

	public Student searchrecord(int cid) {
		
		return session.get(Student.class, cid);
	
	}

	public List<Student> listStudent() {
	
	Query<Student> query=session.createQuery("from  Student",Student.class);
	
		return query.list()  ;
	}
	public void insertrecord1(Student studentold,Student student) {
		
		transaction.begin();
		studentold.setName(student.getName());
		studentold.setFathername(student.getFathername());
		studentold.setCity(student.getCity());
		studentold.setPhone(student.getPhone());
		studentold.setEmail(student.getEmail());
	     session.save(studentold);	
		transaction.commit();
		
			
	}
	public void deleterecord1(Student student) {
		
		transaction.begin();
		session.delete(student);
		transaction.commit();
		
	
	}
	}



