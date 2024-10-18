package Admin;

import java.io.IOException;
import DAO.database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeleteElection")  // Ensure the servlet is properly mapped
public class DeleteElection extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        String id = request.getParameter("e-id");

        database db = new database();

        if (db.deleteElection(id)) {
            
            response.sendRedirect("DeleteElection.jsp?status=success");
        } else {
 
            response.sendRedirect("DeleteElection.jsp?status=fail");
        }
    }
}
