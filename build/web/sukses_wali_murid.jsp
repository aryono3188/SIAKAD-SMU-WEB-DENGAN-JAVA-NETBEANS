<%-- 
    Document   : sukses_wali_murid
    Created on : Jun 20, 2018, 8:12:46 PM
    Author     : Haryono
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
    String userid = request.getParameter("usname_wali_murid");    
    String pwd = request.getParameter("pass_wali_murid");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from wali_murid where usname_wali_murid='" + userid + "' and pass_wali_murid='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("indexwali_murid.jsp");
    } else {
        out.println("Login Tidak Berhasil <a href='login_wali_murid.jsp'>silahkan coba lagi</a>");
    }
%>