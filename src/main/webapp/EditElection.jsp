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
	    	  <h1>Edit Details</h1>
		</div>
		<div class="navbar-button">
			<button onclick="location.href='AdminPage.jsp'">Admin Dashboard</button>
		</div>
	</div>
	

    <h3>Edit Election Details</h3>
<div  class="election-form">
<form action="EditElection" method="post">
					<% String status = request.getParameter("status"); %>
		<% if ("success".equals(status)) { %>
			<p style="color:green;">Election Modified successfully!</p>
		<% } else if ("fail".equals(status)) { %>
			<p style="color:red;">Failed to add election. Please try again.</p>
		<% } %>

			<label for="e-id">Election Id</label> <br>
			<input type="text" class="field" id="e-id"  placeholder="Enter Election ID" name="e-id" required><br><br>

			<label for="e-name">Election Title</label> <br>
			<input type="text" class="field" id="e-name"  placeholder="Enter Election Title" name="e-name" required><br><br>

			<label for="e-detail">Description</label><br>
			<textarea id="e-detail" class="field"  placeholder="Description...." name="e-detail" required></textarea><br><br>
		<div class="date">
			<div class="date1">
			<label for="startDate">Start Date</label> 
			<input type="date" id="startDate" class="date-field" name="startDate" required><br><br>
			</div>
			<div class="date2">
			<label for="endDate">End Date</label> 
			<input type="date" id="endDate" class="date-field" name="endDate" required><br><br>
			</div>
		</div>
			<div class="btn">
			<button type="submit">Submit</button>
        </div>
		</form>
</div>

	<h3>Edit Candidate Details</h3>
	<div class="candidate-form">
	<form action="EditCandidate" method="post">

	<% String s = request.getParameter("s"); %>
<% if ("success".equals(s)) { %>
    <p style="color:green;">Candidate Modified successfully!</p>
<% } else if ("fail".equals(s)) { %>
    <p style="color:red;">Failed to add candidate. Please try again.</p>
<% } %>
    <label for="e-id">Election ID</label> <br>
    <input type="text" name="e-id"  placeholder="Enter Election ID"  required><br><br>
    
    <label for="c-id">Candidate ID</label> <br>
    <input type="text" name="c-id" placeholder="Enter Candidate ID" required><br><br>
	
    <label for="candidateName">Candidate Name</label> <br>
    <input type="text" name="candidateName"  placeholder="Enter Candidate Name" required><br><br>

    <label for="party">Party Affiliation:</label> <br>
    <input type="text" name="party" placeholder="Enter Party Name" required><br><br>
	<div class="btn">
    <button type="submit">Submit</button>
    </div>
    </form>
		</div>
		</div>
		
</body>
</html>