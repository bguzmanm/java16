package cl.awakelab.models.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import cl.awakelab.models.dto.Student;

public class StudentService {
	
	private List<Student> studentsList = new ArrayList<Student>();
	
	public StudentService() {
		studentsList.add(new Student(1, "Rocio", "Venegas", "Aldalde Delano #42384", LocalDate.now()));
		studentsList.add(new Student(2, "Ricardo", "Cea", "Los Grajales #2344", LocalDate.now()));
		studentsList.add(new Student(3, "Michael", "Rojas", "Calle Chica #34", LocalDate.now()));
	}
	
	public List<Student> findAll(){
		return studentsList;	
	}
	
	public Student findOne(int id) {
		/*for(int i = 0; i < studentsList.size(); i++) {
			Student student = studentsList.get(i);
			if (student.getId() == id) {
				return student;
			}
		}
		return null;*/
		
		return studentsList.stream().filter(s -> s.getId() == id).findFirst().orElse(null);
		
	}

}
