<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!--  DB연결 관련 변수 선언 -->
<c:set var="url"></c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<!-- 여러 값을 한번에 전달하기 위한 변수 선언 -->
<c:set var="birth" value="${param.byear}-${param.bmonth}-${param.bday}"/>
<c:set var="hp" value="${param.hp1}-${param.hp2}-${param.hp3}"/>

<!-- 한글 처리 -->
<fmt:requestEncoding value="UTF-8"/>

<!-- DB 연결 -->
<sql:setDataSource var="mariadb" url="${url}" driver="${drv}" 
user="${usr}" password="${pwd}"/>

<!-- sql insert문 작성 & html 폼의 데이터 전달 -->
<sql:update dataSource="${mariadb}" var="cnt">
	insert into NMember(userid,passwd,name,birth,gender,email,hp) values (?,?,?,?,?,?,?)
	<sql:param value="${param.userid}"/>
	<sql:param value="${param.passwd}"/>
	<sql:param value="${param.name}"/>
	<sql:param value="${birth}"/>
	<sql:param value="${param.gender}"/>
	<sql:param value="${param.email}"/>
	<sql:param value="${hp}"/>
</sql:update>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 처리결과</title>
</head>
<body>
	<h1>회원가입 처리결과</h1>
	<p><c:if test="${cnt gt 0}">
		회원 가입 완료!</c:if></p>
		
	<p><a href="member2.jsp">가입한 회원 조회</a></p>
</body>
</html>