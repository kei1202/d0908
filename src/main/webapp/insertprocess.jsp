<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbcon.jsp"%>
<%
	PreparedStatement pstmt=null;
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
	String passwd=request.getParameter("pass");
	String name=request.getParameter("name");
	
	String sql="insert membertable(id,passwd,name) values(?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,id);
	pstmt.setString(2,passwd);
	pstmt.setString(3,name);
	pstmt.executeUpdate();
	System.out.println("저장 성공");
	System.out.println("아이디 : "+id+"  패스워드 : "+pass+"  이름 : "+name);
%>
<h1>아이디 : <%=id %></h1>
<h1>비밀번호 : <%=passwd %></h1>
<h1>이름 : <%=name %></h1>
</body>
</html>