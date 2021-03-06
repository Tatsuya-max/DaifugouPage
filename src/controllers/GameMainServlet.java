package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;

@WebServlet("/GameMainServlet")
public class GameMainServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    HttpSession session = request.getSession();
    User user = (User)session.getAttribute("user");

    if(user != null) {
      RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/gameMain.jsp");
      rd.forward(request, response);
    }else{
      response.sendRedirect("/DaifugouPage/");
    }
  }
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

  }

}
