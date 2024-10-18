<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Election Voting</title>
<link rel="stylesheet" href="./CSS/navbar_.css">
<link rel="stylesheet" href="./CSS/View.css">
</head>
<body>
<div class="container">
	<div class="navbar-section">
		<div class="navbar-heading">
	    	  <h1>Election</h1>
		</div>
		<div class="navbar-button">
			<button onclick="location.href='UserPage.jsp'">Back</button>
		</div>
	</div>
	

		

		<%
		String value = request.getParameter("election-id");
		String voter = request.getParameter("voter-id");
		String name=request.getParameter("name");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "1811");
			PreparedStatement pst = con.prepareStatement("select * from candidate where election_id=?;");
			pst.setString(1, value);
			ResultSet rs = pst.executeQuery();
			
			%>
			<h3><%= value %> : <%= name %> Candidate List</h3>
			<div class="view-form">
			<%

			while (rs.next()) {
				String election_id = rs.getString(2);
				String candidate_name = rs.getString(3);
				String candidate_id = rs.getString(1);
				String party = rs.getString(4);
		%>
		<div class="candidate-details">
			<form action="Voting" method="Post" id="votingForm">
				<p class="id">
					Candidate Id:
					<%=candidate_id%></p>
				<p class="name">
					Candidate Name:
					<%=candidate_name%></p>
				<p class="party">
					Party Name:
					<%=party%></p>
				<input type="hidden" name="e-id" value="<%=election_id%>">
				<input type="hidden" name="party" value="<%=party%>">
				<input type="hidden" name="voter" value="<%=voter%>">
				<div class="btn">
				<button type="submit">Vote</button>
				</div>
			</form>
		</div>
		
		<%
		}
		} catch (Exception e) {
		out.println(e);
		}
		%>
		</div>
	</div>
	



</body>
</html>
	<!-- <script>
    function vote() {
        var voterId = prompt("Enter Your Voter ID");
        if (voterId) {
            // Create a form dynamically to submit the Voter ID
            var form = document.createElement("form");
            form.method = "POST";
            form.action = "CheckVoterId"; // Change to your servlet URL

            // Create an input for the Voter ID
            var input = document.createElement("input");
            input.type = "hidden";
            input.name = "voter-id";
            input.value = voterId;

            form.appendChild(input);
            document.body.appendChild(form); // Append the form to the body
            form.submit(); // Submit the form
        } else {
            alert("Voter ID is required to vote.");
        }
    }
</script>
 -->