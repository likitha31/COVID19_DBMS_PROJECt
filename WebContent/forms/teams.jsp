<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Team Profile</title>
<style>
	body{
		background-image: url("../Images/Sign_Up.jpg");
		background-size: cover;		
	}
	form{
		margin-left: 800px;
		margin-top: 100px;
	}
	h1{
		color: green;
		text-decoration: underline;
		font-family: 'Lobster', cursive;
		font-size: 40px;
		margin-left : 780px;	
	}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>

	<h1>Team Details</h1>
	<form method="POST" action="../controller/insert/teams_c.jsp">
	
		<input name="team_id" type="number" placeholder="Team-ID" min="1"><br><br>
		<input name="hid" type="text" placeholder="Hospital-ID"><br><br>
		<input name="team_name" type="text" placeholder="Team-Name"><br><br>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>