<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Election</title>
<link rel="stylesheet" href="./CSS/navbar_.css">
<link rel="stylesheet" href="./CSS/add.css">
</head>
<body>
	<div class="container">
	<div class="navbar-section">
		<div class="navbar-heading">
	    	  <h1>Add Details</h1>
		</div>
		<div class="navbar-button">
			<button onclick="location.href='AdminPage.jsp'">Admin Dashboard</button>
		</div>
	</div>


		
		<h3>Add Election Details</h3>
		<div class="election-form">
		<form action="AddElection" method="post">
			
<% String status = request.getParameter("status"); %>
		<% if ("success".equals(status)) { %>
			<p style="color:green;">Election added successfully!</p>
		<% } else if ("fail".equals(status)) { %>
			<p style="color:red;">Failed to add election. Please try again.</p>
		<% } %>
			<label for="e-id">Election Id</label> <br>
			<input type="text" id="e-id" class="field" name="e-id" placeholder="Enter Election ID" required><br><br>

			<label for="e-name">Election Title</label> <br>
			<input type="text" id="e-name" class="field" name="e-name" placeholder="Enter Election Title" required><br><br>

			<label for="e-detail">Description</label><br>
			<textarea id="e-detail" class="field" name="e-detail" placeholder="Description...." required></textarea><br><br>
		<div class="date">
			<div class="date1">
			<label for="startDate">Start Date</label> 
			<input type="date" class="date-field"  id="startDate" name="startDate" required><br><br>
			</div>
			<div class="date2">
			<label for="endDate">End Date</label> 
			<input type="date" class="date-field"  id="endDate" name="endDate" required><br><br>
			</div>
		</div>
        <div class="btn">
			<button type="submit">Submit</button>
		</div>
		</form>
		</div>

	<h3>Add Candidate Details</h3>
		<div class="candidate-form">
	<form action="AddCandidate" method="post">
<% String s = request.getParameter("s"); %>
<% if ("success".equals(s)) { %>
    <p style="color:green;">Candidate added successfully!</p>
<% } else if ("fail".equals(s)) { %>
    <p style="color:red;">Failed to add candidate. Please try again.</p>
<% } %>
    <label for="e-id">Election ID</label> <br>
    <input type="text" name="e-id" placeholder="Enter Election ID" required><br><br>
    
     <label for="candidateId">Candidate ID</label> <br>
    <input type="text" name="candidateId" placeholder="Enter Candidate ID (Ex:ElectionId+S.No=101001)" required><br><br>
    

    <label for="candidateName">Candidate Name</label> <br>
    <input type="text" name="candidateName" placeholder="Enter Candidate Name" required><br><br>

    <label for="party">Party Affiliation</label> <br>
    <input type="text" name="party" placeholder="Enter Party Name" required><br><br>
	<div class="btn">
    <button type="submit">Add Candidate</button>
    </div>
    </form>
		</div>
	</div>
	</body>
</html>
