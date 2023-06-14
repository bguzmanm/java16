package cl.awakelab;

import java.util.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/")
public class MiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MiServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Usuario> lista = new ArrayList<Usuario>();
		
		
		lista.add(new Usuario("Rocio", "Venegas"));
		lista.add(new Usuario("Ricardo", "Cea"));
		lista.add(new Usuario("Michael", "Rojas"));
		
		request.setAttribute("usuarios", lista);
		
		getServletContext().getRequestDispatcher("/views/index.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
