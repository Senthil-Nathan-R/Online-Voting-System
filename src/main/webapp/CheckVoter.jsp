<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="./CSS/navbar_.css">
    <link rel="stylesheet" href="./CSS/Check.css">
</head>
<body>
<div class="container">
 	<div class="navbar-section">
		<div class="navbar-heading">
	    	  <h1>User Dashboard</h1>
		</div>
		<div class="navbar-button">
			<form action="UserPage.jsp">
				<button type="submit">Back</button>
			</form>
		</div>
	</div>
        <%
		String value = request.getParameter("election_id");
        String name=request.getParameter("name");
		%>
        <div class="check">
			<form action="CheckVoter" method="post" id="check">
				<label for="voter-id">Voter Id</label> <br>
				<input type="text" class="field" id="voter-id" placeholder="Enter Voter-ID" name="voter-id" required><br> <br>
				
				<label for="aadhaar">Aadhaar Number</label> <br>
				<input type="text" class="field" id="aadhaar" placeholder="Enter Aadhaar Number"  name="aadhaar" required><br> <br>
				<input type="hidden" name="e-id" value="<%= value %>">
				<input type="hidden"  name="name" value="<%= name %>">
				<div class="btn">
        		<button type="submit">Submit</button>
        		</div>
			</form>
		</div>
	</div>
</body>
</html>