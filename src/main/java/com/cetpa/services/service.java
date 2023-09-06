package com.cetpa.services;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cetpa.models.Student;
import com.cetpa.repositories.repository;


@Service
public class service {
	@Autowired
	private repository repo;

	public void insertrecord(Student student) {
	repo.insertrecord(student);
		
	}

	public Student searchrecord(int cid) {
	int	id=cid;
	Student p=repo.searchrecord(id);
		return p;
	}

	public List<Student> listStudent() {
		
		return repo.listStudent();
	}

	public void deleterecord1(int cid) {
		Student student=repo.searchrecord(cid);
		 repo.deleterecord1(student);
	}
	
	public void insertrecord1(Student student) {
		Student studentold=repo.searchrecord(student.getId());
		repo.insertrecord1(studentold,student);
			
		}
	
	
	

}