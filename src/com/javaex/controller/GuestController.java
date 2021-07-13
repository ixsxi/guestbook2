package com.javaex.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaex.dao.GuestbookDao;
import com.javaex.vo.GuestbookVo;



@WebServlet("/gbc")
public class GuestController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");	
		
		System.out.println("컨트롤러");
		String action = request.getParameter("action");
		System.out.println(action);
		
		
		if("list".equals(action)) {
			System.out.println("[리스트]");
			
			
			GuestbookDao guestbookdao = new GuestbookDao();
			List<GuestbookVo> guestbookList  = guestbookdao.getList();
			
			System.out.println("controller-------------------------");
			System.out.println(guestbookList);
			
			request.setAttribute("gList", guestbookList);
			
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/list.jsp");
			rd.forward(request, response);	
			
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
