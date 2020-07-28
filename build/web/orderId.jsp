<%-- 
    Document   : orderId
    Created on : Apr 9, 2020, 2:50:38 PM
    Author     : pakhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
String pn=request.getParameter("Product_name");
String pi=request.getParameter("proid");
String cn=request.getParameter("Customer_name");
String dd=request.getParameter("Delivery_Details");
String nc=request.getParameter("Card_name");
String cno=request.getParameter("Card_no");
String cvv=request.getParameter("CVV");
String ex=request.getParameter("Exp.dt");
String m=request.getParameter("phone");
%>

<%
    
Class.forName("com.mysql.jdbc.Driver");
Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/cake?zeroDateTimeBehavior=convertToNull","root","");
Statement st=con.createStatement();
String query="insert into itemorder(productname,productid,customername,deliverydetails,cardname,cardno,cvv,expdt,phone) values('"+pn+"','"+pi+"','"+cn+"','"+dd+"','"+nc+"','"+cno+"','"+cvv+"','"+ex+"','"+m+"')";
st.executeUpdate(query);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Id</title>
        
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
        <h1>Order Successful</h1>
        <label>your booking ID is:</label>
        <a id='orderNum'></a> 
        <script>
            
             var x = Math.floor((Math.random() * 100000) + 1);
             document.getElementById("orderNum").innerHTML = x;
            
        </script>
        
        
        

<form>
<input type='submit' value="Continue with shopping" formaction='newhtml.html'/> 
</form>
        </main>
    </body>
</html>
