package Admin;

import java.io.IOException;
import DAO.database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/EditElection")  // Ensure the servlet is properly mapped
public class EditElection extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        String id = request.getParameter("e-id");
        String name = request.getParameter("e-name");
        String detail = request.getParameter("e-detail");
        String sdate = request.getParameter("startDate");
        String edate = request.getParameter("endDate");
        
       
        database db = new database();

        if (db.editElection(id, name, detail, sdate, edate)) {
            
            response.sendRedirect("EditElection.jsp?status=success");
        } else {
 
            response.sendRedirect("EditElection.jsp?status=fail");
        }
    }
}
