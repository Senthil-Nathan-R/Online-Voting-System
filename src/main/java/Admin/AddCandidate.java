package Admin;

import java.io.IOException;

import DAO.database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/AddCandidate")
public class AddCandidate extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
		String id = request.getParameter("e-id");
		String name = request.getParameter("candidateName");
		String name_id= request.getParameter("candidateId");
		String party = request.getParameter("party");



       
        database db = new database();

        if (db.addCandidate(id, name, party , name_id)) {
            response.sendRedirect("AddElection.jsp?s=success");
        } else {
            response.sendRedirect("AddElection.jsp?s=fail");
        }

    }

}
