<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Enumeration enumeration = session.getAttributeNames();
		
		while(enumeration.hasMoreElements()){//hasMoreElements() 다음 요소가 있으면 true 없으면 false 
			String sessionName = (String)enumeration.nextElement();
			String sessionValue = (String) session.getAttribute(sessionName);
			
			if(sessionValue.equals("tiger")){
				session.removeAttribute(sessionName);
			}
		}
		
		
	
	%>
	<a href="sessionTest.jsp">로그인확인</a>

</body>
</html>