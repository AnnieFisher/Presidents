package web;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Presidents")
public class PresidentServlet extends HttpServlet {
	PresidentList pl;
	
	@Override
	public void init() throws ServletException {
		ServletContext context = getServletContext();
		pl = new PresidentList(context);
	}

	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("presidents", pl.getPresidents());
		req.getRequestDispatcher("/select.jsp").forward(req, resp);
	}
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		req.getRequestDispatcher("/select.jsp").forward(req, resp);
		
		
		
	}


}
	
	

