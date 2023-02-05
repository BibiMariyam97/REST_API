package com.student.app.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.app.model.Student;
import com.student.app.repository.StudentRepository;
import com.student.app.service.StudentService;


@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentRepository studentRepository;
	
	@Override
	public List<Student> getAllStudents() {
		return studentRepository.findAll();
	}

	@Override
	public Student getStudentById(int id) {
		return studentRepository.findById(id).get();
	}

	@Override
	public void save(Student student) {
		  studentRepository.save(student);
	}

	@Override
	public void delete(int id) {
		studentRepository.deleteById(id);
	}

}
