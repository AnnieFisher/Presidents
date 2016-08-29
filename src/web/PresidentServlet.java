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
	int term = 0;

	@Override
	public void init() throws ServletException {
		ServletContext context = getServletContext();
		pl = new PresidentList(context);
	}

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("presidents", pl.getPresidents());
		req.setAttribute("term", term);
		req.getRequestDispatcher("/select.jsp").forward(req, resp);
	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		req.setAttribute("presidents", pl.getPresidents());
		String direction = req.getParameter("submit");

		if (direction.equals("Back")) {
			term = ((int) session.getAttribute("term")) - 1;
			session.setAttribute("term", term);
		} else if (direction.equals("Next")) {
			term = ((int) session.getAttribute("term")) + 1;
			session.setAttribute("term", term);
		} else if (direction.equals("submit")) {
			try{
				int term = Integer.parseInt(req.getParameter("term"));
				session.setAttribute("term", term);
			}
			catch(Exception e) {
				term = 0;
			}
		}
		req.getRequestDispatcher("/select.jsp").forward(req, resp);

	}

}
