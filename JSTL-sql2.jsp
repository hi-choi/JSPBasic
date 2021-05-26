<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!--  DB연결 관련 변수 선언 -->
<c:set var="url"></c:set>
<c:set var="drv">org.mariadb.jdbc.Driver</c:set>
<c:set var="usr">playground</c:set>
<c:set var="pwd">bigdata2020</c:set>

<!-- 한글 처리 -->
<fmt:requestEncoding value="UTF-8"/>

<!-- DB 연결 -->
<sql:setDataSource var="mariadb" url="${url}" driver="${drv}" 
user="${usr}" password="${pwd}"/>

<!-- sql select문 작성 & books.html의 폼의 데이터 전달 -->
<sql:query dataSource="${mariadb}" var="rs">
	select * from sungjuk
</sql:query>


<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSTL-sql</title>
</head>
<body>
	<h1>JSTL-sql</h1>
	<h2>sql:query-select 질의문 실행</h2>
	
	<c:forEach var="row" items="${rs.rows}">
		<p>${row.sjno} ${row.name} ${row.kor} ${row.eng} ${row.mat}</p>
		<p>${row.tot} ${row.avg} ${row.grd} ${row.regdate}</p>
		<hr>
	</c:forEach>

</body>
</html>