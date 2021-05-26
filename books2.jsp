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

<!-- 한글 처리 -->
<fmt:requestEncoding value="UTF-8"/>

<!-- DB 연결 -->
<sql:setDataSource var="mariadb" url="${url}" driver="${drv}" 
user="${usr}" password="${pwd}"/>


<!-- 한글 처리 -->
<fmt:requestEncoding value="UTF-8"/>

<!-- DB 연결 -->
<sql:setDataSource var="mariadb" url="${url}" driver="${drv}" 
user="${usr}" password="${pwd}"/>

<!-- sql select문 작성 & books.html의 폼의 데이터 전달 -->
<sql:query dataSource="${mariadb}" var="rs">
	select * from books order by bookid desc
</sql:query>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>등록된 도서조회</title>
</head>
<body>
	<h1>등록된 도서 조회</h1>
		
	<c:forEach var="row" items="${rs.rows}">
		<p>${row.bookid} ${row.bookname} ${row.publish} ${row.price}</p>
		<hr>
	</c:forEach>
</body>
</html>