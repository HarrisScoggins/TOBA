
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewCustomerServlet1 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/";
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zipcode = request.getParameter("zipcode");
        String email = request.getParameter("email");
        String message = null;
        if (firstname == null || lastname == null || email == null
                || address == null || city == null || state == null || address == null
                || city == null || firstname.isEmpty() || lastname.isEmpty() || phone.isEmpty()
                || address.isEmpty() || city.isEmpty() || state.isEmpty()
                || zipcode.isEmpty() || email.isEmpty()) {
            url += "New_customer.jsp";
            message = "Please fill out all three text boxes.";

        } else {
            message = null;
            url += "Success.html";

        }
        request.setAttribute("message", message);

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}
