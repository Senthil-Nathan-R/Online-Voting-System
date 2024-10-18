package Admin;

import java.io.IOException;

import DAO.database;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/EditCandidate")
public class EditCandidate extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
		String id = request.getParameter("e-id");
		String cid=request.getParameter("c-id");
		String name = request.getParameter("candidateName");
		String party = request.getParameter("party");



       
        database db = new database();

        if (db.editCandidate(id ,cid, name, party)) {
            response.sendRedirect("EditElection.jsp?s=success");
        } else {
            response.sendRedirect("EditElection.jsp?s=fail");
        }

    }

}
