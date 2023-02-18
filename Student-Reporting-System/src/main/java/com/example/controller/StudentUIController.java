package com.example.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.model.Student;
import com.example.repository.StudentDao;

@Controller
public class StudentUIController {

	@Autowired
	private StudentDao sDao;
	
	
	
	@GetMapping("/home")
	public String homeLauncher() {
		
		return "welcome";
	}
	
	
	@GetMapping("/getAllStudents")
	public String getAllStudents(Model model ){
	 Iterable<Student> itr= sDao.findAll();
	 
	 List<Student> students= new ArrayList<>();
	 itr.forEach(students::add);
	 
	 model.addAttribute("mydata", students);
	 
	 return "result";
	 
	}
	
	@GetMapping("/addStudent")
	public String addNewStudent() {
		
		return "addStudent";
	}
}
