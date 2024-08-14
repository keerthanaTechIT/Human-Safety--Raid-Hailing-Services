package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import dbcon.Dbcon;

/**
 * Servlet implementation class requestdetails
 */
@WebServlet("/requestdetails")
public class requestdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public requestdetails() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	
	
		
		
		String name=request.getParameter("name");
		String uemail=request.getParameter("uemail");
		String address=request.getParameter("address");
		String location=request.getParameter("location");
		String demail=request.getParameter("demail");
		
		Connection con;
		
		int reg=0;
		 con=(Connection) Dbcon.create();
			
			try {
				
					
					PreparedStatement ps=(PreparedStatement) con.prepareStatement("INSERT INTO humansecurity.drrequest VALUES(id,?,?,?,?,?,?)");
					ps.setString(1, name);
					ps.setString(2, uemail);
					ps.setString(3, address);
					ps.setString(4, location);
					ps.setString(5, demail);
					ps.setString(6, "request");
					
				
					
					
					
					reg=ps.executeUpdate();

		} catch (SQLException e) {
		//TODO Auto-generated catch block
		e.printStackTrace();
		}
			if(reg==1){
				response.sendRedirect("filltoaddress.jsp");
			}
			else{
				response.sendRedirect("error.jsp");
			}
			
			
		
		
	
	}

}
