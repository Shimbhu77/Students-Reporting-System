package com.example.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;

import lombok.Data;

@Data
@Document(indexName = "students")
public class Student {

	@Id
	private Integer roll;
	private String name;
	private String email;
	private Integer semester;
	private Integer EnglishMarks;
	private Integer MathsMarks;
	private Integer scienceMarks;
	
}
