package Admin;

import java.io.IOException;
import DAO.database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Register")  // Ensure the servlet is properly mapped
public class Register extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        String name = request.getParameter("fullname");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String phn = request.getParameter("phone");
        String address = request.getParameter("address");
        String voter_id = request.getParameter("voter_id");
        String aadhaar = request.getParameter("aadhaar_no");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String terms=request.getParameter("terms");
        
       
        database db = new database();

        if (db.addUser(name, dob, gender,email,phn,address,voter_id,aadhaar,username,password,terms)) {
            
            response.sendRedirect("Signup.jsp?status=success");
        } else {
 
            response.sendRedirect("Signup.jsp?status=fail");
        }
    }
}
