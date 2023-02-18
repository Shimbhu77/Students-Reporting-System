package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.model.Student;
import com.example.repository.StudentDao;

@RestController
public class StudentController {

	@Autowired
	private StudentDao sDao;
	
	@PostMapping("/students")
	public Student saveStudent(@RequestBody Student student) {
		
		return sDao.save(student);
		
	}
	
	@GetMapping("/students")
	public List<Student> getAllStudents(){
	 Iterable<Student> itr= sDao.findAll();
	 
	 List<Student> students= new ArrayList<>();
	 itr.forEach(students::add);
	 
	  return students;
	 
	 
	}
}
