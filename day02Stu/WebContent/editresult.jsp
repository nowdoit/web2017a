<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<table>
		<!-- 로고 -->
		<tr>
			<td colspan="6">
				<img alt="logo" src="imgs/logo.jpg">
			</td>
		</tr>
		<!-- 메뉴 -->
		<tr>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td width="150" bgcolor="#aaaaff"><a href="index.jsp">home</a></td>
			<td width="150" bgcolor="#aaaaff"><a href="add.jsp">입력</a></td>
			<td width="150" bgcolor="#aaaaff"><a href="viewall.jsp">보기</a></td>
			<td width="150" bgcolor="#aaaaff">방명록</td>
			<td>&nbsp;&nbsp;&nbsp;</td>
		</tr>
		<!-- 내용 -->
		<tr>
			<td colspan="6">
<%
	String num= request.getParameter("num");
	String name= request.getParameter("name");
	String kor= request.getParameter("kor");
	String eng= request.getParameter("eng");
	String math= request.getParameter("math");
	String sql="update stu03 set ";
	sql+="name='"+name+"',";
	sql+="kor="+kor+",";
	sql+="eng="+eng+",";
	sql+="math="+math+" where num="+num;
	System.out.println(sql);
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	Connection conn=null;
	Statement stmt=null;
	int result=0;
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url,user,password);
		stmt=conn.createStatement();
		result=stmt.executeUpdate(sql);
	}catch(Exception e){
		
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
%>
				<%if(result>0){ %>
				<h1>수정 성공</h1>
				<%}else{ %>
				<h1>수정 실패</h1>
				<%} %>
			</td>
		</tr>
		<!-- 꼬리말 -->
		<tr>
			<td colspan="6">
			(주)한빛이엔아이 ｜ 사업자등록번호 : 220-85-43667 ｜ 통신판매신고 : 마포 제 0358호
한빛ENI : 02-707-1480 / (121-854) 서울시 마포구 신수동 63-14 구프라자 3층 / 대표이사 : 염기호
개인정보보호관리책임자 : 허윤
Copyright (c) 2015 한빛교육센터 All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>