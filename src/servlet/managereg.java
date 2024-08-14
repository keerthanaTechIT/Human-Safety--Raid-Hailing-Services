package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.diverbean;
import imple.imple;

/**
 * Servlet implementation class managereg
 */
@WebServlet("/managereg")
public class managereg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public managereg() {
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
	String email=request.getParameter("email");

	String pass=request.getParameter("pass");


	System.out.println(name);
	System.out.println(email);
	System.out.println(pass);
	
	diverbean ob=new diverbean();
	
	
	ob.setName(name);
	ob.setEmail(email);
	ob.setPass(pass);
	
	
	imple op=new imple();
	
	int reg=op.mnreg(ob);
	
	
	if(reg==1){
		response.sendRedirect("managementlogin.jsp");
	}
	else{
		response.sendRedirect("error.jsp");
	   }

	
	}

}
