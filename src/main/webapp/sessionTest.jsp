<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 중 테스트</title>
</head>
<body>
	<%
		String sessionId = (String)session.getAttribute("memberId"); // (String) .toString 차이 : .toString은 null이 들어오면 오류
				
		if(sessionId==null){
			out.print("로그인 해주세요");
		}
		else{
			out.print(sessionId+"님 로그인중");
		}
	%>
	<br>
	<a href="logout.jsp">로그아웃</a>
	<br>
	<a href="logout2.jsp">로그아웃2</a>
</body>
</html>