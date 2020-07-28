<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
String u=request.getParameter("uname");
String p=request.getParameter("pass");
String f=request.getParameter("fname");
String l=request.getParameter("lname");
String em=request.getParameter("email");
String m=request.getParameter("phone");
String a=request.getParameter("address");
%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/cake?zeroDateTimeBehavior=convertToNull","root","");
Statement st=con.createStatement();
String query="insert into signup(username,password,fname,lname,email,phone,address) values('"+u+"','"+p+"','"+f+"','"+l+"','"+em+"','"+m+"','"+a+"')";
st.executeUpdate(query);
%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html> 
<head> 
<title> Canceled order</title> 

<style>
            body{
             background-image:url('images/back3.jpg');
             background-size:cover;
             background-attachment: fixed;
            }
            main{
               justify-content:center;
                align-item:center;
                text-align: center;
                
            }
        </style>

</head> 
<body>
    
    <main> 
        <h1>Registration is Successful</h1> 

<form>
<input type='submit' value="Please Login" formaction='login.html'/> 
</form>
        </main>

</body> 
</html> 



