<%@page import="DataBase_Interface.Execute_Statement"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
		String d_id = request.getParameter("doctorid");
		String p_id = request.getParameter("patientid");
		String status = request.getParameter("status");
		
		JSONObject what = new JSONObject();
		JSONObject where = new JSONObject();
		
		where.put("Doctor_ID",d_id);
		where.put("Patient_ID",p_id);
		what.put("Testing_Status",status);
		System.out.print(what);
		Execute_Statement e = new Execute_Statement();
		e.Update(what, where, "Entity_Patient");
	%>
	
	<h2>Patient Details Entered Successfully</h2>
<a href="../../people/doctor.jsp"><h3>Click Here To Go Back</h3></a>
	
</body>
</html>