<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin home</title>

</head>
<body>
<jsp:include page="header.jsp"/>
<div align="right"><a href="index.jsp">Logout</a></div>
<h3>Welcome ${username} !</h3>
<h4>${approve}</h4>
<h4>Admin Dash Board</h4>
<a href="admin?action=listall">List All</a><br>
<a href="process.jsp">Process Loan</a><br>
<a href="calemi.jsp">Calculate EMI</a>
<jsp:include page="footer.jsp"/>
</body>
</html>