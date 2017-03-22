<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*,com.hb.util.MyOracle"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%!
	private Connection conn;
	private PreparedStatement pstmt;
%>
<body>
	<jsp:useBean id="bean" class="com.hb.dto.Guest03Bean"></jsp:useBean>
	<jsp:setProperty property="*" name="bean"/>
<%
	String sql="update guest03 set name=?,pay=? where sabun=?";
	int result=0;
	try{
		conn=MyOracle.getConnection();
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, bean.getName());
		pstmt.setInt(2, bean.getPay());
		pstmt.setInt(3, bean.getSabun());
		result=pstmt.executeUpdate();
	}finally{
		if(pstmt!=null)pstmt.close();
		if(conn!=null)conn.close();
	}
	out.println("<h2>");
	if(result>0)out.println("수정 성공");
	else out.println("수정 실패");
	out.println("</h2>");
%>	
</body>
</html>







