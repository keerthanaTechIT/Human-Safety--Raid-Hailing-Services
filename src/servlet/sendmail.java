package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbcon.Dbcon;

/**
 * Servlet implementation class sendmail
 */
@WebServlet("/sendmail")
public class sendmail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sendmail() {
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
	String id=request.getParameter("id");
	
	String uemail=request.getParameter("uemail");
	if(data.equals("verified"))
	{
		
/*		mail1.main(uemail," Verifired Scuccsesfully !     he is great no had and terrible activitys permit is completely confirmed you start your excursion peasefully");
*/
		
		
		String status="verified";
		try{
			
			Connection con=Dbcon.create();
			Statement st=con.createStatement();
			st.executeUpdate("UPDATE humansecurity.urequest u SET status='" + status + "' where id='" + id + "' ");
			response.sendRedirect("policeviewdriver.jsp");
		
		}
		catch(Exception e){
			response.sendRedirect("error.jsp?inval id");
			System.out.println(e);
		}
		
		
		
		
		
		
		
	}
	else
	{
		
		
		String status=" Accused";
		try{
			
			Connection con=Dbcon.create();
			Statement st=con.createStatement();
			st.executeUpdate("UPDATE humansecurity.urequest u SET status='" + status + "' where id='" + id + "' ");
			response.sendRedirect("policeviewdriver.jsp");
		
		}
		catch(Exception e){
			response.sendRedirect("error.jsp?inval id");
			System.out.println(e);
		}
		
		
		
		
		
		
		
		
		
		
		
/*		mail1.main(uemail," Not Verifired !     try not to take the taxi he is accused go to safe spot out from them.");
*/
		
	}
	
	
	
	
	}

}
