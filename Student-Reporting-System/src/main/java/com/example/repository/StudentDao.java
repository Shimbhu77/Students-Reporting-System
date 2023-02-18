package com.example.repository;

import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

import com.example.model.Student;

public interface StudentDao extends ElasticsearchRepository<Student, Integer> {

}
