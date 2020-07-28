

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
    int x=0;
String p=request.getParameter("phone");
String c=request.getParameter("Customer_name");
Connection con = null;
ResultSet rs=null;
PreparedStatement ps=null;
%>

<%
    try{
Class.forName("com.mysql.jdbc.Driver");
con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/cake?zeroDateTimeBehavior=convertToNull","root","");
String query="select * from itemorder where phone=? and customername=?";
ps=con.prepareStatement(query);
ps.setString(1, p);
ps.setString(2, c);
rs=ps.executeQuery();

if(rs.next()){
    x=1;
}
    RequestDispatcher rd=null;
    if(x==1)
    {
    rd=request.getRequestDispatcher("cancelId.html");
    }
    else
    {  
    rd=request.getRequestDispatcher("cancel1.html");
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

