<%-- 
    Document   : sukses_admin
    Created on : Apr 12, 2018, 2:16:17 PM
    Author     : Haryono
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
 
<%
    String userid = request.getParameter("usname_admin");    
    String pwd = request.getParameter("pass_admin");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from admin where usname_admin='" + userid + "' and pass_admin='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("indexadmin.jsp");
    } else {
        out.println("Login Tidak Berhasil <a href='login_admin.jsp'>silahkan coba lagi</a>");
    }
%>

