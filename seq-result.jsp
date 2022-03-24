<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>

<%
String sequence = request.getParameter("sequence");
String submit = request.getParameter("submit");
String clear = request.getParameter("clear");
String rc = request.getParameter("rc");
String outstring ="";
String path = pageContext.getServletContext().getRealPath("/");



if (rc.equals("rc")) { 
	System.out.println(rc);
	System.out.println(path);
	//Process process = Runtime.getRuntime().exec("python3 D:\\web_project\\mg-bio\\src\\main\\pythonCode\\revcom.py " + sequence);
	Process process = Runtime.getRuntime().exec("python3 " + path + "/pythonCode/revcom.py " + sequence);
	//Process process = Runtime.getRuntime().exec("python3 ./revcom.py " + sequence);
	StringBuilder output = new StringBuilder();
	StringBuilder err = new StringBuilder();
	BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));
	BufferedReader stderr = new BufferedReader(new InputStreamReader(process.getErrorStream()));
	String line;
	while ((line = reader.readLine()) != null) {
	    output.append(line);
	}

	while ((line = stderr.readLine()) != null) {
	    err.append(line);
	}
	System.out.println(output.toString());
	System.out.println(err);
	
	
	outstring = output.toString();
}

%>

<h3>Sequence: <%=sequence %></h3>
<h3>Submit : <%=submit %></h3>
<h3>Clear : <%=clear %></h3>
<h3>Rev-com : <%=rc %></h3>
<h3>Result : <%=outstring %></h3>
