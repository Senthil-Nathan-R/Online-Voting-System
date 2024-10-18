   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Dashboard</title>
    <link rel="stylesheet" href="./CSS/navbar_.css">
    <link rel="stylesheet" href="./CSS/style.css">
</head>
<body>
    <div class="container">
    <div class="navbar-section">
		<div class="navbar-heading">
	    	  <h1>User Dashboard</h1>
		</div>
		<div class="navbar-button">
			<form action="Logout" method="post">
				<button type="submit">Log Out</button>
			</form>
		</div>
	</div>


        <%
        HttpSession ses = request.getSession();
        String Name = (String) ses.getAttribute("Name");
    	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

		if (session.getAttribute("Name") == null) {
			response.sendRedirect("Signup.jsp");
		}
		 try {
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "1811");
	            String query1="select * from users where username=?;";
	        	PreparedStatement pst = con.prepareStatement(query1);
				pst.setString(1,Name);
	            
	            ResultSet rs = pst.executeQuery();

	            while (rs.next()) {
	                String uname = rs.getString(1);
	                %><h2>Welcome <%= uname %>....!</h2><%
	            	        
	            }
	        } catch (Exception e) {
	            out.println(e);
	        }
		 %>
        <h3>Elections Details</h3>
        <%
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "1811");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from election;");

            while (rs.next()) {
                String election_id = rs.getString(1);
                String election_name = rs.getString(2);
                String detail = rs.getString(3);
                String sdate = rs.getString("startDate");
                String edate = rs.getString("endDate");
                String sDate = sdate + " 06:00:00"; 
                String eDate = edate + " 18:00:00"; 
        %>
        <div class="main-div">
            <form action="CheckVoter.jsp" method="get" onsubmit="return validateVoteDates('<%= sDate %>', '<%= eDate %>');">
                <h4>Election ID : <%= election_id %></h4>
                <p class="title">Election Name : <%= election_name %></p>
                <p><%= detail %></p>
                <div class="date">
                <p>Start Date : <span><%= sdate %></span></p>
                <p>End Date: <span><%= edate %></span></p>
                </div>
                <input type="hidden" name="election_id" value="<%= election_id %>">
                 <input type="hidden"  name="name" value="<%= election_name %>">
                <button type="submit">Vote</button>
            </form>
            
            <!-- Results Button -->
            <form action="Results.jsp" class="result-btn" method="get">
                <input type="hidden"  name="value" value="<%= election_id %>">
                 <input type="hidden"  name="name" value="<%= election_name %>">
               
                <button type="submit" id="resultsButton_<%= election_id %>" disabled>View Results</button>
            </form>
        </div>

        <!-- JavaScript to enable the results button -->
       <script>
            document.addEventListener("DOMContentLoaded", function() {
                checkIfResultsCanBeViewed('<%= eDate %>', '<%= election_id %>');
            });

            function checkIfResultsCanBeViewed(endDate, electionId) {
                const currentDate = new Date();
                const end = new Date(endDate);

                if (currentDate > end) {
                    document.getElementById("resultsButton_" + electionId).disabled = false;
                    document.getElementById("resultsButton_" + electionId).classList.toggle('active');
                }
            }

            function validateVoteDates(startDate, endDate) {
                const currentDate = new Date();
                const start = new Date(startDate);
                const end = new Date(endDate);

                const currentHours = currentDate.getHours();

                if (currentDate >= start && currentDate <= end) {
                    if (currentHours >= 6 && currentHours < 18) {
                        return true; 
                    } else {
                        alert("Voting is allowed only between 6 AM and 6 PM.");
                        return false; 
                    }
                } else {
                    alert("Voting is not allowed outside the election period.");
                    return false; 
                }
            }
        </script> 
        <%
            }
        } catch (Exception e) {
            out.println(e);
        }
        %>
        
       
    </div>

</body>
</html>
