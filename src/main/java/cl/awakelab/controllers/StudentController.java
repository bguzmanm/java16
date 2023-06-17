package cl.awakelab.controllers;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cl.awakelab.models.service.StudentService;


@WebServlet("/students")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	StudentService studentService = new StudentService();

    public StudentController() {
        super();
     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		// validamos si está logueado, consultando la variable de sesión isLogged
		HttpSession session = request.getSession();
		
		if (session.getAttribute("isLogged") == null) {
			getServletContext().getRequestDispatcher("/login").forward(request, response);
		}
		
		boolean isLogged = (boolean)session.getAttribute("isLogged");
		
		if (!isLogged) {
			getServletContext().getRequestDispatcher("/login").forward(request, response);
		} 
		
		// validamos si viene un id del estudiante
		String param = request.getParameter("id");
		
		// si no viene el id, lo enviamos al listado.
		if (param == null) {
			request.setAttribute("students", studentService.findAll());
			getServletContext().getRequestDispatcher("/views/studentsList.jsp").forward(request, response);

		// si viene el id del estudiante, obtenemos la acción (a) 
		} else {
			int id = Integer.parseInt(param);
			
			
			param = request.getParameter("a");
			
			if (param == null) {
				param = "read";
			}
			
			String path = "/views/student.jsp";
			
			
			switch (param) {
				case "read":
					request.setAttribute("action", "read");
					break;
				case "edit":
					request.setAttribute("action", "edit");
					break;
				case "delete":
					
					break;
				default:
					break;
					
			}
			
			request.setAttribute("student", studentService.findOne(id));
			getServletContext().getRequestDispatcher(path).forward(request, response);
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String name = (String)request.getParameter("name");
		String lastName = (String)request.getParameter("lastName");
		String address = (String)request.getParameter("address");
		LocalDate birthday = LocalDate.parse(request.getParameter("birthday"));
		
		
		boolean result = studentService.save(id, name, lastName, address, birthday);
		System.out.println(result);
				
		if (result) {
			request.setAttribute("students", studentService.findAll());
			getServletContext().getRequestDispatcher("/views/studentsList.jsp").forward(request, response);
		} else {
			System.out.println("ERROR!");
			getServletContext().getRequestDispatcher("/students").forward(request, response);
		}
	}

}
