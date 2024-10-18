package Admin;

import java.io.IOException;

import DAO.database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCandidate")
public class DeleteCandidate extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
		String id = request.getParameter("e-id");
		String cid=request.getParameter("c-id");

       
        database db = new database();

        if (db.deleteCandidate(id ,cid)) {
            response.sendRedirect("DeleteElection.jsp?s=success");
        } else {
            response.sendRedirect("DeleteElection.jsp?s=fail");
        }

    }

}
