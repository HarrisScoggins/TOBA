package servlets;


import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bll.User;
import java.util.Calendar;
import java.util.GregorianCalendar;

/**
 *
 * @author hscog
 */
public class NewCustomerServlet1 extends HttpServlet {

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

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
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zipcode = request.getParameter("zipcode");
        String email = request.getParameter("email");
        String message = null;
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

       
        String url = "/New_customer.jsp";
        if (action.equals("join")) {
            url = "/Login.jsp";    // the "join" page
        }
        if (action.equals("add")) {
            

            if (firstname == null || lastname == null || email == null
                    || address == null || city == null || state == null
                    || firstname.isEmpty() || lastname.isEmpty() || phone.isEmpty()
                    || address.isEmpty() || city.isEmpty() || state.isEmpty()
                    || zipcode.isEmpty() || email.isEmpty()) {
                url = "/New_customer.jsp"; //+=
                message = "Please fill out all three text boxes.";
            } else {
                User user = new User();
                user.setAddress(address);
                user.setFirstName(firstname);
                user.setLastName(lastname);
                user.setPhone(phone);
                user.setAddress(address);
                user.setCity(city);
                user.setEmail(email);
                user.setState(state);
                user.setZipcode(zipcode);
                user.setPassword("welcome1");
                user.setUsername(lastname + zipcode);
                session.setAttribute("user", user);
                session.setAttribute("message",message);
                message = null;
                url = "/Success.jsp"; //+=

            }
             
             session.setAttribute("message",message);
        }

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);

    }
}