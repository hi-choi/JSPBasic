<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- SungJukV2b.html => SungJukV2b.jsp --%>

<jsp:useBean id="sj" class="hi_choi.SungJuk"/>
<%-- SungJuk sj = new SungJuk(); --%>

<jsp:setProperty name="sj" property="*"/>
<%-- 
	String name=request.getParameter("name");
	int kor=Integer.parseInt(request.getParameter("kor"));
	int eng=Integer.parseInt(request.getParameter("eng"));
	int mat=Integer.parseInt(request.getParameter("mat"));
--%>	

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>성적처리 프로그램</title>
</head>
<body>
	<h1>성적처리 프로그램</h1>
	<p>이름 : <jsp:getProperty name="sj" property="name"/></p>
 	<p>국어 : <jsp:getProperty name="sj" property="kor"/></p>
	<p>영어 : <jsp:getProperty name="sj" property="eng"/></p>
	<p>수학 : <jsp:getProperty name="sj" property="mat"/></p>
    <p>총점 : <jsp:getProperty name="sj" property="tot"/></p>
	<p>평균 : <jsp:getProperty name="sj" property="avg"/></p>
	<p>학점 : <jsp:getProperty name="sj" property="grd"/></p>
</body>
</html>