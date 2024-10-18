package Admin;

import java.io.IOException;
import DAO.database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Voting")  
public class Voting extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        String id = request.getParameter("e-id");
        String party = request.getParameter("party");
        String voter = request.getParameter("voter");
       
        database db = new database();

        if (db.voting(id, party , voter)) {
            
            response.sendRedirect("UserPage.jsp?status=success");
        } else {
 
            response.sendRedirect("UserPage.jsp?status=fail");
        }
        
    }
}
