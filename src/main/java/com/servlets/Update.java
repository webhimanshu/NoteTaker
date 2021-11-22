package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class Update
 */
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id=Integer.parseInt(request.getParameter("id"));
		String title=request.getParameter("title");
		String content=request.getParameter("content");
		PrintWriter out=response.getWriter();
		 Session ses=FactoryProvider.getFactory().openSession();
		 Transaction trans=ses.beginTransaction();
		  Note note=(Note)ses.get(Note.class, id);
		  note.setTitle(title);
		  note.setContent(content);
		  note.setAddedDate(new Date());
		  trans.commit();
		  ses.close();
		  response.sendRedirect("all_notes.jsp");
		  
	}


}
