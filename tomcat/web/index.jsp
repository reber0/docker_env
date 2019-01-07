<%@ page language="java"  contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.sql.*,java.io.*" %>
<%
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@oracle:1521:xe";
Connection conn = null;
Statement pstm = null;
ResultSet rs = null;

String id = request.getParameter("id");
String sql = "select * from msg where id="+id;
out.println(sql+"<br><br>");

try {
    Class.forName(driver);
    conn = DriverManager.getConnection(url,"utest","ptest");  
    pstm = conn.createStatement();
    rs = pstm.executeQuery(sql);
    while(rs.next()){
        out.println("ID: "+rs.getString("id")+"<br>");
        out.println("Title: "+rs.getString("title")+"<br>");
        out.println("Content: "+rs.getString("content")+"<br>");
    }
} catch(Exception e) {
    out.println(e); //会输出sql的报错信息
    //e.printStackTrace(); //不会输出sql的报错信息
} finally {
    if(rs != null){rs.close();}
    if(pstm != null){pstm.close();}
    if(conn != null){conn.close();}
}
//将Oracle下的驱动/u01/app/oracle/product/11.2.0/xe/jdbc/lib/ojdbc6.jar复制到tomcat的lib下
%>