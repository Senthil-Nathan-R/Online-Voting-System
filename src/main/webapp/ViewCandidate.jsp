<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/navbar_.css">
<link rel="stylesheet" href="./CSS/View.css">
<style>
.navbar-button button{
margin-right:20px;
}
</style>
</head>
<body>
	<div class="container">
	<div class="navbar-section">
		<div class="navbar-heading">
	    	  <h1>Candidate Details</h1>
		</div>
		<div class="navbar-button">
			<button onclick="location.href='AddElection.jsp'">Add Candidate</button>
			<button onclick="location.href='AdminPage.jsp'">Back</button>
		</div>
	</div>
		
		
		
		<%
		String value=request.getParameter("value");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "1811");
			PreparedStatement pst = con.prepareStatement("select *, dense_rank()over(partition by election_id order by candidate_id) as ranks from candidate where election_id=?;");
			pst.setString(1, value);
			ResultSet rs = pst.executeQuery();
			%>
			<h3>Election ID:<%= value %></h3>
			<div class="view-form">
			
			<%
			
			while (rs.next()) {
				String election_id = rs.getString(2);
				String candidate_name = rs.getString(3);
				String candidate_id = rs.getString(1);
				String party = rs.getString(4);
		%>
		<div class="candidate-details">
			<p class="id">
				Candidate ID : <%=candidate_id%></p>
			<p class="name">
				Candidate Name : <%=candidate_name%></p>
			<p class="party">
				Party : <%=party%></p>
			<div class="btn">
			<a href="EditElection.jsp">
				<button>Edit</button>
			</a>
			</div>
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