package com.cisco.legal.eclmnextgen.search.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cisco.legal.eclmnextgen.search.dao.SearchDAO;
import com.cisco.legal.eclmnextgen.search.dao.SearchDAOImpl;





@WebServlet("/SearchController")
public class SearchController extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 102831973239L;
	private SearchDAO dao;
	public static final String LIST_RECORDS = "/basicSearch.jsp";
	
	 public SearchController() {
	    	dao = new SearchDAOImpl();
	    }
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	 {
		 System.out.println("You are inside of search Controller");
		 String forward = "";
			String action = request.getParameter("action");
			System.out.println(action);
		 if(action.equalsIgnoreCase("getExternalPartyName"))
				
			{
			
				System.out.println(action);
				forward = LIST_RECORDS;
				//String external_party_name =  request.getParameter("external_party_name") ;
				//dao.getByExternalPartyName(external_party_name);
				request.setAttribute("records", dao.getByExternalPartyName("external_party_name") );
			}
	
			
			
		 else if( action.equalsIgnoreCase( "listRecords" ) ) {
		
				forward = LIST_RECORDS;
				request.setAttribute("records", dao.getAllRecords() );
			}
			
			RequestDispatcher view = request.getRequestDispatcher( forward );
			view.forward(request, response);
		}
}
