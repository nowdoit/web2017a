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
		<!-- �ΰ� -->
		<tr>
			<td colspan="6">
				<img alt="logo" src="imgs/logo.jpg">
			</td>
		</tr>
		<!-- �޴� -->
		<tr>
			<td>&nbsp;&nbsp;&nbsp;</td>
			<td width="150" bgcolor="#aaaaff"><a href="index.jsp">home</a></td>
			<td width="150" bgcolor="#aaaaff"><a href="add.jsp">�Է�</a></td>
			<td width="150" bgcolor="#aaaaff"><a href="viewall.jsp">����</a></td>
			<td width="150" bgcolor="#aaaaff">�����</td>
			<td>&nbsp;&nbsp;&nbsp;</td>
		</tr>
		<!-- ���� -->
		<tr>
			<td colspan="6">
<%
	String num=request.getParameter("num");
	String sql="delete from stu03 where num="+num;
	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:xe";
	String user="scott";
	String password="tiger";
	Connection conn=null;
	Statement stmt=null;
	int result=0;
	try{
		Class.forName(driver);
		conn=DriverManager.getConnection(url, user, password);
		stmt=conn.createStatement();
		result=stmt.executeUpdate(sql);
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(stmt!=null)stmt.close();
		if(conn!=null)conn.close();
	}
	if(result>0)out.println("<h1>��������</h1>");
	else out.println("<h1>��������</h1>");
%>
			</td>
		</tr>
		<!-- ������ -->
		<tr>
			<td colspan="6">
			(��)�Ѻ��̿����� �� ����ڵ�Ϲ�ȣ : 220-85-43667 �� ����ǸŽŰ� : ���� �� 0358ȣ
�Ѻ�ENI : 02-707-1480 / (121-854) ����� ������ �ż��� 63-14 �������� 3�� / ��ǥ�̻� : ����ȣ
����������ȣ����å���� : ����
Copyright (c) 2015 �Ѻ��������� All rights reserved.
			</td>
		</tr>
	</table>
</body>
</html>