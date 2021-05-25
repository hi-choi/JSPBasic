<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 - 24단</title>
</head>
<body>
	<h1>구구단 - 24단</h1>
	<%
		out.print("24 x 1 = " + (24*1) + "<br>");
		out.print("24 x 2 = " + (24*2) + "<br>");
		out.print("24 x 3 = " + (24*3) + "<br>");
		out.print("24 x 4 = " + (24*4) + "<br>");
		out.print("24 x 5 = " + (24*5) + "<br>");
		out.print("24 x 6 = " + (24*6) + "<br>");
		out.print("24 x 7 = " + (24*7) + "<br>");
		out.print("24 x 8 = " + (24*8) + "<br>");
		out.print("24 x 9 = " + (24*9) + "<br>");
	%>
	<hr>
	<%
		for(int i=1;i<=24;i++){
			out.print("24 x "+i+" = " + 24*i + "<br>");
		}
	%>

<%-- 이것은 JSP 주석입니다 --%>	
</body>
</html>