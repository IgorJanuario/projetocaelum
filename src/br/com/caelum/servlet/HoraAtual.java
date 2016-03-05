package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HoraAtual extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		PrintWriter out = resp.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hora atual</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("A hora do sistema é " + Calendar.getInstance().getTime());
		out.println("</body>");
		out.println("</html>");
	}

}
