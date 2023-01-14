<%-- 
    Document   : indextata_usaha
    Created on : Jun 19, 2018, 11:57:43 PM
    Author     : Haryono
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource var="dataSource"
                   driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost:3306/ta_sis_akademik"
                   user="root" password=""/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistem Informasi Akademik</title>
        <link rel="stylesheet" type="text/css" href="config/siakad_smu.css" media="screen" />
        <script type="text/javascript" src="config/setting.js"></script>
    </head>
    <body bgcolor=lightblue>
        <%--awal dari halaman web--%>

        <div id="wrap">
           <div id="header"><%--awal header--%>
                <img src="image/tut_wuri_handayani_1.png">
                <%--gambar silahkan masukan logo BSI--%>
                <nobr>
                    <h1><center>Sistem Informasi Akademik</center></h1>
                    <h1><center>Sekolah Menengah Umum</center></h1>
                    <h1><center>Berbasis Web</center></h1>
                </nobr>               
            </div><%--akhir dari header--%>

            <div id="menu"><%--awal dari menu atas --%>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="login_tata_usaha.jsp">Logout</a></li>
                </ul>
            </div><%-- akhir dari menu atas --%>

            <div id="content"><%-- awal dari isi content --%>
                <div class="right"><br><%-- awal dari content sebelah kanan web --%> 
            <center>
                <table bgcolor="pink" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head">
                                    <thead>
                                        <td>
                                        <center><h2>Tata Usaha</h2></center>
                                        </td>
                                    </thead>
                                </tr> 
                </table>
                <table widht="100%">
                    <tr>
                        <td valign="top" widht="0%">
                        <td valign="top" widht="150%">                           
                            <table bgcolor="gray" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head">
                                    <thead>
                                        <td>
                                            <h2>Master Data</h2>
                                        </td>
                                    </thead>
                                </tr>  
                                    <ul>
                                        <tr>
                                            <td bgcolor="pink"><h3><li>
                                                <a href="indextata_usaha.jsp?halaman=update_tata_usaha">Update Data Pribadi     
                                            </li></h3></td>
                                        </tr>
                                        <tr>
                                            <td bgcolor="pink"><h3><li><a href="indextata_usaha.jsp?halaman=input_spp_siswa">Input SPP Siswa</a></li></h3></td>                   
                                        </tr>
                                    </ul>
                            </table>                          
                        </td>    
                        </td>
                    </tr>
                </table>
            </center>    
            
            <center>
            <table widht="100%">
                    <tr>
                        <td valign="top" widht="0%">
                        <td valign="top" widht="150%">                           
                            <table bgcolor="gray" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head">
                                    <thead>
                                        <td>
                                            <h2>Cetak Data</h2>
                                        </td>
                                    </thead>
                                </tr>  
                                    <ul>
                                        <tr>
                                            <td bgcolor="pink"><h3><li><a href="indextata_usaha.jsp?halaman=data_update_tata_usaha">Cetak Tata Usaha</a></li></h3></td>
                                        </tr>
                                        <tr>
                                            <td bgcolor="pink"><h3><li><a href="indextata_usaha.jsp?halaman=data_spp">Cetak SPP Siswa</a></li></h3></td>                   
                                        </tr>
                                    </ul>
                            </table>                          
                        </td>    
                        </td>
                    </tr>
                </table>
            </center>    
            </div><%-- akhir dari content sebelah kanan web --%>    

                <div class="left"> <%-- awal dari content sebelah kiri web --%>   
                <table width="100%">
                    <tr>
                        <td valign="top" width="110%">
                        <%-- isi dari content sebelah kanan --%>
                            <c:choose>
                                <c:when test="${param.halaman=='update_tata_usaha'}">   
                                    <%@include file="update_tata_usaha.jsp"%>
                                </c:when> 
                                <c:when test="${param.halaman=='data_update_tata_usaha'}">   
                                    <%@include file="data_update_tata_usaha.jsp"%>
                                </c:when>
                                <c:when test="${param.halaman=='spp'}">   
                                    <%@include file="spp.jsp"%>
                                </c:when> 
                                <c:when test="${param.halaman=='input_spp_siswa'}">   
                                    <%@include file="input_spp_siswa.jsp"%>
                                </c:when>
                                 <c:when test="${param.halaman=='data_spp'}">
                                    <%@include file="data_spp.jsp"%>
                                </c:when>
                                <c:otherwise>
                                    <%@include file="home.jsp" %>
                                </c:otherwise>
                                </c:choose>
                        </td>
                    </tr>      
                </table>    
                                                     
                <div class="footer"> <%--awal dari content footer web --%>
                    support by  <a href="">Junior Programmer Mahasiswa Program Study Komputerisasi Akuntansi BSI MARGONDA DEPOK</a>,
                                <a href="">Copyright &copy; 12 April 2018 by Haryono. – All Right Reserved</a>                                    
                                <br>
                                <%=new java.util.Date()%>
                </div>
                </div>
                    <div style="clear:both;"> 
                    </div>
            </div><%--akhir dari isi content --%>
        </div><%--akhir dari halaman web --%>                                                
    </body>
</html>

