package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.GeneralSecurityException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.LoginDao;
import util.SendEmail;

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

		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String username=request.getParameter("username");
		String password =request.getParameter("password");
		LoginDao dao=new LoginDao();
		int id=-1;
		int realid=dao.getId(username, password);
		id= dao.login(username, password);
		PrintWriter out=response.getWriter();
		String verifyCode= request.getParameter("verifyCode");
		//判断验证码是否正确
		String sessionValidateCode =(String)request.getSession().getAttribute("SESSION_VALIDATECODE");
		if(!sessionValidateCode.equals(verifyCode)) {
			out.print("<script type='text/javascript'>");
			out.print("alert('验证码错误，请重新输入');");
			out.print("window.location ='login.jsp';");
			out.print("</script>");}
		else {
			request.getSession().setAttribute("Username", username);
			request.getSession().setAttribute("Og_id", LoginDao.getOrg(username, password));
			request.getSession().setAttribute("loginId", realid);
		if(id==0)
			response.sendRedirect("superadm.jsp");
		else if(id==1)
			response.sendRedirect("AdminServlet?type=select");
		else if(id==2) {
			request.getSession().setAttribute("manager", "helpfilter");
			response.sendRedirect("index.jsp");
		}
		else if(id==3) {
			request.getSession().setAttribute("LEADER", "helpfilter");
			response.sendRedirect("index2.jsp");
		}
		else {
			 out.print("<script type='text/javascript'>");
		     out.print("alert('账号密码错误，请重新输入');");
		     out.print("window.location ='login.jsp';");
		     out.print("</script>");}
		}
	
	}
}
