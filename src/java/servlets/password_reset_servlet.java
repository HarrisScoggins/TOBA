package servlets;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import bll.User;
import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class password_reset_servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
         
         
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";
        }

        String url = "/password_reset.jsp";
        if (action.equals("join")) {
            url = "/password_reset.jsp";
        }
        if (action.equals("add")) {
            String password1 = request.getParameter("password1");
            String password2 = request.getParameter("password2");
            String newpassword = password2;
            session.getAttribute("user");
                       
            if( session.getAttribute("password")==null){
                
                url ="/New_customer.jsp";
            }
            else{
                session.setAttribute("password",newpassword);
                 url = "/Success.jsp";
            }
          
           
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
