<%-- 
    Document   : sukses_siswa
    Created on : Jun 20, 2018, 11:18:55 PM
    Author     : Haryono
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
 
<%
    String userid = request.getParameter("usname_siswa");    
    String pwd = request.getParameter("pass_siswa");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from siswa where usname_siswa='" + userid + "' and pass_siswa='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("indexsiswa.jsp");
    } else {
        out.println("Login Tidak Berhasil <a href='login_siswa.jsp'>silahkan coba lagi</a>");
    }
%>

