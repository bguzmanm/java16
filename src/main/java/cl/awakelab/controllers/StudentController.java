package cl.awakelab.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.awakelab.models.service.StudentService;


@WebServlet("/students")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public StudentController() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		StudentService studentService = new StudentService();
		
		String param = request.getParameter("id");
		
		if (param == null) {
			request.setAttribute("students", studentService.findAll());
			getServletContext().getRequestDispatcher("/views/studentsList.jsp").forward(request, response);
		} else {
			int id = Integer.parseInt(param);
			request.setAttribute("student", studentService.findOne(id));
			getServletContext().getRequestDispatcher("/views/student.jsp").forward(request, response);
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
