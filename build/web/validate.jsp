<%-- 
    Document   : validate.jsp
    Created on : Mar 11, 2020, 8:04:00 PM
    Author     : pakhi
--%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
    int x=0;
String u=request.getParameter("uname");
String p=request.getParameter("pass");
Connection con = null;
ResultSet rs=null;
PreparedStatement ps=null;
%>

<%
    try{
Class.forName("com.mysql.jdbc.Driver");
con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/cake?zeroDateTimeBehavior=convertToNull","root","");
String query="select * from signup where username=? and password=?";
ps=con.prepareStatement(query);
ps.setString(1, u);
ps.setString(2, p);
rs=ps.executeQuery();

if(rs.next()){
    x=1;
}
    RequestDispatcher rd=null;
    if(x==1)
    {
    rd=request.getRequestDispatcher("newhtml.html");
    }
    else
    {  
    rd=request.getRequestDispatcher("login1.html");
    }
    rd.forward(request,response);}
    catch(Exception e){
    e.printStackTrace();}
    finally{
    try{
    rs.close();
    ps.close();
    con.close();
    }
    catch(Exception ee)
    {
    ee.printStackTrace();
    }}
    %>
