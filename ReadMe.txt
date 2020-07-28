# Online Cake Ordering System


## Features
- Authentication for login.
- Customers can browse the menu, order the cakes, cancel the order.
- Make payment online.
- Customers can Register.
- Data stored in a MySQL database
- Friendly user interface.


## Technologies
- [Java](https://go.java/index.html) - widely used object-oriented language, the core of our system
- [MySQL](https://www.mysql.com) - data storage solution.
- [Html](https://www.w3schools.com/html/default.asp) - used for styling and creating webpages.

## Tools
- [Netbeans IDE 8.1](http://netbeans.apache.org/download)
- [XAMPP](https://www.apachefriends.org/download.html)

## Set Up Instructions For Running Application
1. Set up your [XAMPP](https://www.apachefriends.org/download.html) environment(Apache Server, phpMyAdmin).
2. Start MySql and enter into admin.
3. Create the **cake** database on the phpMyAdmin tool, and import the SQL file(**cake** database file in the project folder) into the created cake database.
4. Download the project and open it in **NetBeans**.
5. Connect with the database in the Services tab under **MySQL Server(localhost)**. The MySQL **JDBC driver** is embedded in the project.
6. Enter your server properties(**Host Name, Port Number, Admin UserName/Password**).
7. Port Number will be same for every Mysql.
7. Make sure database name in the jsp files are same as created in the phpMyAdmin.
