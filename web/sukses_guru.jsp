<%-- 
    Document   : sukses_guru
    Created on : Jun 17, 2018, 8:00:20 PM
    Author     : Haryono
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
 
<%
    String userid = request.getParameter("usname_guru");    
    String pwd = request.getParameter("pass_guru");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from guru where usname_guru='" + userid + "' and pass_guru='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("indexguru.jsp");
    } else {
        out.println("Login Tidak Berhasil <a href='login_guru.jsp'>silahkan coba lagi</a>");
    }
%>
