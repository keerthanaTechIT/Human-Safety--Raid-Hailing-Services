package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import dbcon.Dbcon;

/**
 * Servlet implementation class driverreglog
 */
@WebServlet("/driverreglog")
public class driverreglog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public driverreglog() {
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

	

		
		String data=request.getParameter("data");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		
		HttpSession session=request.getSession();
		session.setAttribute("demail", email);

		System.out.println(email);
		System.out.println(pass);
		
		Connection con = null;
		
		if(data.equals("2")){
			
			
			int reg=0;
		 con=(Connection) Dbcon.create();
			
			try {
				
					
					PreparedStatement ps=(PreparedStatement) con.prepareStatement("INSERT INTO humansecurity.driverregister VALUES(id,?,?,?,?)");
					ps.setString(1, name);
					ps.setString(2, email);
					ps.setString(3, pass);
					ps.setString(4, "request");
					
				
					
					
					
					reg=ps.executeUpdate();

		} catch (SQLException e) {
		//TODO Auto-generated catch block
		e.printStackTrace();
		}
			if(reg==1){
				response.sendRedirect("driverreglog.jsp");
			}
			else{
				response.sendRedirect("error.jsp");
			}
			
			
			
			
			
			
			
			
		}
		else{
			
			
			boolean log = false;
			try {
				
				 con=(Connection) Dbcon.create();
					
				java.sql.PreparedStatement ps=con.prepareStatement("SELECT * FROM `humansecurity`.`driverregister` where email=? and pass=? ");
				ps.setString(1, email);
				ps.setString(2, pass);
					
					
					java.sql.ResultSet rs=ps.executeQuery();
					log=rs.next();
		}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				}
						if(log==true){
							response.sendRedirect("drivermain.jsp");
						}
						else{
							response.sendRedirect("error.jsp");
						   }
			
			
			
		}
		
		
		
		
		
		
	}

}
