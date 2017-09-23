package servlets;


import java.io.IOException;
import java.util.Calendar;
import java.util.GregorianCalendar;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bll.User;

/**
 *
 * @author hscog
 */
public class LoginServlet1 extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
      HttpSession session = request.getSession();
        String action = request.getParameter("action");
      
        String url = "/Login.jsp";
       
        if (action.equals("add")) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username.equals("jsmith@toba.com") && password.equals("letmein")) {

                User user = new User();
                user.setPassword(password);
                user.setUsername(username);
                session.setAttribute("user", user);
                url = "/Success.jsp";
            }
        }
        if (action.equals("reset")) {
            url = "/password_reset.jsp";
        }
       getServletContext()
              .getRequestDispatcher(url)
               .forward(request, response);

    }

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

}
