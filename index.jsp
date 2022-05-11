<%@page import="java.sql.*,java.util.*"%>
    <html>

    <body>
        <%!
int i=0,id;
String name,email;
Connection con;
%>
            <%
try{
	Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb","root","");
	out.println("Database Connected<br>");

	Statement st=con.createStatement();
   /** String ddl="create table student(id varchar(10), Name varchar(20), Sex varchar(5), DOB Date, Contact_Number Integer, Email varchar(20))";
    st.execute(ddl);
    out.println("Table  created successfully<br>");*/

    String dmlinsert="insert into student values('104', 'Ushu', 'Fem', '2000-09-11', 999, 'ush@gmail.com')";
    int noofrowsaffected=st.executeUpdate(dmlinsert);
    out.println("No of rows affected "+noofrowsaffected);
    out.println("\nInserted Succesfully");
	%>
                <font color='green'>
                    <h1>Registered Successfully</h1>
                </font>
                <%
	con.close();
}
catch(Exception e){
	%>
                    <font color='red'>
                        <h1>Registration Failed due to Exception</h1>
                    </font>
                    <%
	}
	%>
    </body>

    </html>
