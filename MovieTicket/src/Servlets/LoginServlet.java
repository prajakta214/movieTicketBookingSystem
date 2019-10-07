package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;

import Database.DatabaseConnection;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	DatabaseConnection dbcon = new DatabaseConnection();

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	PrintWriter out = response.getWriter();
	HttpSession session = request.getSession();
		
	String userName = request.getParameter("username");
	
	String psw = request.getParameter("psw");
	try{
	Connection con = (Connection) dbcon.dbconnection();

	
         PreparedStatement statement = con.prepareStatement("select username , psw from admin where username=? and psw=? ");
         statement.setString(1, userName);
         statement.setString(2, psw);
         ResultSet result = statement.executeQuery();
         if(result.next()){
        	 session.setAttribute("username", userName);
             response.sendRedirect("admin/login.html");
         }else{
             out.println("username or password are incorrect");
         }
     }catch(Exception e){
         System.out.println("DB related Error");
         e.printStackTrace();
     }   
	
	}

}
