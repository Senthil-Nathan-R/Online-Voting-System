<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Election Results</title>
    <link rel="stylesheet" href="./CSS/navbar_.css">
    <link rel="stylesheet" href="./CSS/Result.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script> <!-- Correct Chart.js link -->
</head>
<body>
<div class="container">
    <div class="navbar-section">
        <div class="navbar-heading">
            <h1>Election Results</h1>
        </div>
        <div class="navbar-button">
            <button onclick="location.href='UserPage.jsp'">Back</button>
        </div>
    </div>

    <%

    String electionId = request.getParameter("value");
    String electionName = request.getParameter("name");
    

    // Initialize arrays to store parties and votes for chart display
    StringBuilder partyNames = new StringBuilder();
    StringBuilder voteCounts = new StringBuilder();
    int i = 0;

    try {
    
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vote", "root", "1811");
        
        PreparedStatement pst = con.prepareStatement("SELECT partyName, COUNT(*) AS vote_count FROM voting WHERE election_id = ? GROUP BY partyName ORDER BY vote_count DESC");
        pst.setString(1, electionId);
        ResultSet rs = pst.executeQuery();
    %>
    <h3><%= electionId %> : <%= electionName %> Results</h3>
    <div class="result">
        <div class="table">
            <table border="1" class="result-table">
                <tr>
                    <th class="party">Party Name</th>
                    <th class="count">Vote Count</th>
                </tr>
                <%
                // Iterate through the results and display in a table
                while (rs.next()) {
                    String partyName = rs.getString("partyName");
                    int voteCount = rs.getInt("vote_count");
                    
                    // Append data to the arrays for chart display
                    if (i > 0) {
                        partyNames.append(",");
                        voteCounts.append(",");
                    }
                    partyNames.append("'").append(partyName).append("'"); // Ensures proper formatting for JS
                    voteCounts.append(voteCount); // No quotes for numbers
                    i++;
                %>
                <tr>
                    <td class="party-details"><%= partyName %></td>
                    <td class="count-details"><%= voteCount %></td>
                </tr>
                <%
                }
                %>
            </table>
        </div>
        
        <!-- Pie Chart Section -->
        <div class="chart">
            <canvas id="resultChart"></canvas>
        </div>
    </div>

    <script>
    // Data from JSP passed into JavaScript arrays
    var parties = [<%= partyNames.toString() %>];  // Ensure quotes are around strings
    var voteCounts = [<%= voteCounts.toString() %>];  // No quotes for numbers

    // Display Pie Chart using Chart.js
    var ctx = document.getElementById('resultChart').getContext('2d');
    var resultChart = new Chart(ctx, {
        type: 'pie', // Use Pie chart
        data: {
            labels: parties,  // Party Names
            datasets: [{
                label: 'Vote Count',
                data: voteCounts,  // Vote counts
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true,
            plugins: {
                legend: {
                    position: 'right',
                },
                title: {
                    display: true,
                    text: 'Election Voting Results'
                }
            }
        }
    });
    </script>

    <%
    } catch (Exception e) {
        out.println("Error: " + e);
    }
    %>

</div>
</body>
</html>
