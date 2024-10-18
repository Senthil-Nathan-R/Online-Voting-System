<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/navbar_.css">
<link rel="stylesheet" href="./CSS/style.css">
</head>
<body>
	<div class="container">
		<div class="navbar-section">
			<div class="navbar-heading">
				<h1>Admin Dashboard</h1>
			</div>


			<div class="navbar-buttons">
				<div class="navbar-btn">
					<button onclick="location.href='AddElection.jsp'">Add
						Election</button>
					<button onclick="location.href='EditElection.jsp'">Edit
						Election</button>
					<button onclick="location.href='DeleteElection.jsp'">Delete
						Election</button>
				</div>
				<div class="navbar-btn2">
					<form action="Logout" method="post">
						<button type="submit">Log Out</button>
					</form>
				</div>

			</div>
		</div>

		<%
		HttpSession s = request.getSession();
		String Name = (String) s.getAttribute("Name");

		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

		if (session.getAttribute("Name") == null) {
			response.sendRedirect("Signup.jsp");
		}
		%>
		<h2>Welcome    <%=Name%>....!</h2>


		<h3>Elections Details</h3>
		<%
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "1811");
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select * from election;");
			while (rs.next()) {
				String election_id = rs.getString(1);
				String election_name = rs.getString(2);
				String detail = rs.getString(3);
				String sDate = rs.getString(4);
				String eDate = rs.getString(5);
		%>
		<div class="main-div">
			<h4>Election ID : <%=election_id%></h4>
			
			<p class="title">Election Name : <%=election_name%></p>
			
			<p class="deteils"><%=detail%></p>
			
			<div class="date">
				<p>Start Date : <span><%=sDate%></span></p>
				<p>End Date : <span><%=eDate%></span></p>
			</div>
			
			<a href="ViewCandidate.jsp?value=<%=election_id%>">
				<button>View Candidate</button>
			</a>
		</div>
		<%
		}

		} catch (Exception e) {
		out.println(e);
		}
		%>

	</div>

</body>
</html>