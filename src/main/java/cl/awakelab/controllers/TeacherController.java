package cl.awakelab.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/teachers")
public class TeacherController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public TeacherController() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		if (session.getAttribute("isLogged") == null) {
			getServletContext().getRequestDispatcher("/login").forward(request, response);
		}
		
		boolean isLogged = (boolean)session.getAttribute("isLogged");
		
		if (!isLogged) {
			getServletContext().getRequestDispatcher("/login").forward(request, response);
		} 
		
		getServletContext().getRequestDispatcher("/views/teachers.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
