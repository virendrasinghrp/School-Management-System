package com.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.bean.LoginBean;
import com.login.dao.LoginDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
	    String password = request.getParameter("password");
	 
	    LoginBean loginBean = new LoginBean();
	 
	    loginBean.setUsername(userName);
	    loginBean.setPassword(password);
	 
	    LoginDao loginDao = new LoginDao();
	 
	    try
	    {
	        String userValidate = loginDao.authenticateUser(loginBean);
	 
	        if(userValidate.equals("Super_Admin_Role"))
	        {
	            System.out.println("Super Admin's Home");
	 
	            HttpSession session = request.getSession(); //Creating a session
	            session.setAttribute("SuperAdmin", userName); //setting session attribute
	            request.setAttribute("userName", userName);
	 
	            request.getRequestDispatcher("pages/jsp/index.jsp").forward(request, response);
	        }
	        else if(userValidate.equals("Admin_Role"))
	        {
	            System.out.println("Admin's Home");
	 
	            HttpSession session = request.getSession(); //Creating a session
	            session.setAttribute("Admin", userName); //setting session attribute
	            request.setAttribute("userName", userName);
	 
	            request.getRequestDispatcher("pages/jsp/index.jsp").forward(request, response);
	        }
	        else if(userValidate.equals("Teacher_Role"))
	        {
	            System.out.println("Teacher's Home");
	 
	            HttpSession session = request.getSession();
	            session.setAttribute("Teacher", userName);
	            request.setAttribute("userName", userName);
	 
	            request.getRequestDispatcher("pages/jsp/index.jsp").forward(request, response);
	        }
	        else if(userValidate.equals("Student_Role"))
	        {
	            System.out.println("Student's Home");
	 
	            HttpSession session = request.getSession();
	            session.setMaxInactiveInterval(10*60);
	            session.setAttribute("Student", userName);
	            request.setAttribute("userName", userName);
	 
	            request.getRequestDispatcher("pages/jsp/student_index.jsp").forward(request, response);
	        }
	        else
	        {
	            System.out.println("Error message = "+userValidate);
	            request.setAttribute("errMessage", userValidate);
	 
	            request.getRequestDispatcher("pages/jsp/login.jsp").forward(request, response);
	        }
	    }
	    catch (IOException e1)
	    {
	        e1.printStackTrace();
	    }
	    catch (Exception e2)
	    {
	        e2.printStackTrace();
	    }
	}

}
