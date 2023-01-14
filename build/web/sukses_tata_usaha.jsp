<%-- 
    Document   : sukses_tata_usaha
    Created on : Jun 19, 2018, 11:52:33 PM
    Author     : Haryono
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
 
<%
    String userid = request.getParameter("usname_t_u");    
    String pwd = request.getParameter("pass_t_u");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from tata_usaha where usname_t_u='" + userid + "' and pass_t_u='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("indextata_usaha.jsp");
    } else {
        out.println("Login Tidak Berhasil <a href='login_tata_usaha.jsp'>silahkan coba lagi</a>");
    }
%>