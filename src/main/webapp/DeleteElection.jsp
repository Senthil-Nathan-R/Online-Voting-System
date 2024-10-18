<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/navbar_.css">
<link rel="stylesheet" href="./CSS/add.css">

</head>
<body>
	<div class="container">
	<div class="navbar-section">
		<div class="navbar-heading">
	    	  <h1>Delete Details</h1>
		</div>
		<div class="navbar-button">
			<button onclick="location.href='AdminPage.jsp'">Admin Dashboard</button>
		</div>
	</div>

	<div class="edit-form">
		<div class="election-form">
		<h4 class="edit">Delete Election</h4>
			<form action="DeleteElection" method="post">
				<%
				String status = request.getParameter("status");
				%>
				<%
				if ("success".equals(status)) {
				%>
				<p style="color: green;">Election Delete successfully!</p>
				<%
				} else if ("fail".equals(status)) {
				%>
				<p style="color: red;">Failed to Delete election. Please try
					again.</p>
				<%
				}
				%>
				

				<label for="e-id">Election ID</label> <input type="text" class="field" id="e-id"
					name="e-id" placeholder="Enter Your Election ID" required><br> <br>

		<div class="btn">				
			<button type="submit">Delete</button>
		</div>

			</form>
		</div>
		
		<div class="candidate-form">
			<h4 class="edit">Delete Candidate</h4>
			<form action="DeleteCandidate" method="post">

				
				<%
				String s = request.getParameter("s");
				%>
				<%
				if ("success".equals(s)) {
				%>
				<p style="color: green;">Candidate Delete successfully!</p>
				<%
				} else if ("fail".equals(s)) {
				%>
				<p style="color: red;">Failed to Delete candidate. Please try
					again.</p>
				<%
				}
				%>
				<label for="e-id">Election ID</label><br> <input type="text"
					name="e-id" class="field" placeholder="Enter Your Election ID" required><br> <br> <label for="c-id">Candidate
					ID</label><br> <input type="text" class="field" placeholder="Enter Your Candidate ID" name="c-id" required><br> <br>

				<div class="btn">
				<button type="submit">Delete</button>
				</div>
			</form>
		</div>
	</div>
	</div>
</body>
</html>