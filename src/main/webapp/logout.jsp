<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃하기</title>
</head>
<body>
	<%
		session.invalidate();//세션 모든정보 삭제 -> 로그아웃
		
		//String sesstionId = (String)session.getAttribute("memberId");
		
		
		
		if(request.isRequestedSessionIdValid()==false){
			out.print("로그아웃 성공");
		}
		else{
			out.print("로그아웃 실패");
		}


	%>
	<br>
	<a href="sessionTest.jsp">로그인 확인 테스트</a>
	
	
</body>
</html>