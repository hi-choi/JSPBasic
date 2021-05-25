<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// 아이디 : abc123, 비밀번호는 987xyz
	// 아이디/비번이 일치 => loginOk.jsp로 redirect
	// 아이디/비번이 불일치 => loginFail.jsp로 redirect
	String userid = request.getParameter("userid");
	String passwd = request.getParameter("passwd");
	
	if(userid.equals("abc123") && passwd.equals("987xyz")){
		response.sendRedirect("loginOk.jsp");
	}
	else{
		response.sendRedirect("loginFail.jsp");
	}
%>
	

