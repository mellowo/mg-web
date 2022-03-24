<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
        String user = request.getParameter("email");
%>

<!DOCTYPE html>
<head>
    <!--title, favicon-->
    <meta charset="utf-8">
    <title>MG-BIO: Reverse Complement Sequence Finder</title>
    <link rel="icon" href="./favicon.ico">
    <link rel="stylesheet" href="./style.css">
</head>

<body>
    <div class="div1">
        <h2>Reverse Complement Sequence </h2>
        <p>Reverse Complement converts a DNA sequence into its reverse-complement counterpart.</p>
    </div>
    <br>
    <div class="content">
        <p>User ID: <%=user %></p>
        <form method="get" action="seq-result.jsp">
            <textarea cols="50px" rows="10px" name="sequence">Type Sequence</textarea><br>
            <input type="submit" value="SUBMIT" id="submit" name="submit">
            <input type="button" value="CLEAR" id="clear" name="clear">
            <input type="radio" value="rev" name="rc">Rev
            <input type="radio" value="com" name="rc">Com
            <input type="radio" value="rc" name="rc">RC
        </form>
    </div>
    <script src="./index.js"></script>
</body>
