package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.LoginLogic;
import models.User;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String pass = request.getParameter("pass");

		if(name.equals("") && pass.equals("")) {
			name = "ゲスト";
			pass = "1111";
		}

		User u = new User(name, pass);
		LoginLogic lLogic = new LoginLogic();
		boolean isLogin = lLogic.execute(u);

		if(isLogin){
			HttpSession session = request.getSession();
			session.setAttribute("user", u);
		}
		RequestDispatcher d = request.getRequestDispatcher("WEB-INF/views/loginResult.jsp");
		d.forward(request, response);
	}

}
