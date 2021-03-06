<%@page import="java.util.*"%>
<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<%
		String userName = null;
		Cookie[] cookies = request.getCookies();
		if(cookies !=null){
			for(Cookie cookie : cookies){
				if(cookie.getName().equals("user")) 
					userName = cookie.getValue();
				//out.println("Value : " + cookie.getValue());
			}
		}
	
		if(userName == null) 
			userName = "DOCTOR_NULL";
		String d_id = userName;
	
		JSONObject obj1 = new JSONObject();
		obj1.put("Doctor_ID",d_id);
		
		Execute_Statement e = new Execute_Statement();
		ArrayList<JSONObject> list = e.Read(obj1,"My_Patients");
	%>
	
	<table id="Table" class="table table-hover border border-dark">
				<thead>
			<% 
			ArrayList<String> keys = new ArrayList<String>(10);
			for(JSONObject obj : list){
				Iterator<String> keysItr = obj.keys();
				while(keysItr.hasNext()){
					String key = keysItr.next();
					keys.add(key);
			%>
					<th><%=key %></th>
			<%
				}
				break;
			}
		    %>
		    	</thead><tbody>
		    <% 
			for(JSONObject obj : list){
			%>  
				<tr>
			<% 
				for(String k : keys){
					if(obj.has(k)){
			%>			<td><%=obj.get(k) %></td>
				<%	}
					else{
				%>		<td>----</td>
				<%	}
				}
			%>
					
			<%
				}
			%>
				</tr>
			
		    </tbody>
			</table>
	
	
			<a href="../people/doctor.jsp"><h3>Go Back</h3></a>
		
</body>
</html>
