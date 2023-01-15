<%-- 
    Document   : index
    Created on : Apr 12, 2018, 1:11:36 PM
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
        <link rel="stylesheet" type="text/css" href="config/siakad_smu.css" media="screen"/>
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
                
                    <marquee behavior="left">
                    Selamat Datang Di Sistem Informasi Akademik Sekolah Menengah Umum Berbasis Web
                    &nbsp &nbsp &nbsp &nbsp &nbsp;
                    SMU Bisa Menjuarai Olimpiade Dunia Fisika &nbsp &nbsp &nbsp &nbsp &nbsp;
                    SMU Bisa Menjuarai Olimpiade Dunia Biologi &nbsp &nbsp &nbsp &nbsp &nbsp;
                    SMU Bisa Menjuarai Olimpiade Dunia Kimia &nbsp &nbsp &nbsp &nbsp &nbsp;
                    SMU Bisa Menjuarai Olimpiade Dunia Matematika &nbsp &nbsp &nbsp &nbsp &nbsp;
                    </marquee> 
                
            </div><%-- akhir dari menu atas --%>

            <div id="content"><%-- awal dari isi content --%>
                <div class="right"><%-- awal dari content sebelah kanan web --%>    
                    
                    <table bgcolor="pink" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head">
                                    <thead>
                                        <td>
                                        <center><h2>PILIH LOG IN</h2></center>
                                        </td>
                                    </thead>
                                </tr> 
                    </table>
                    <table widht="100%">
                    <tr>
                        <td valign="top" widht="0%">
                        <td valign="top" widht="150%">                           
                            <table bgcolor="gray" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head"></tr>                                  
                                    <ul>                                                                                                                                                          
                                        <tr>
                                        <left><a href="login_admin.jsp"><img src="image/admin.jpg"/></a></left>
                                        </tr>
                                        <tr>
                                        <center><td bgcolor="pink"><h3><li><a href="login_admin.jsp">Admin</a></li></h3></td></center>
                                        </tr>
                                    </ul>
                            </table><td><td>
                            <table bgcolor="gray" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head"></tr>  
                                    <ul> 
                                        <tr>
                                        <a href="login_wali_murid.jsp"><img src="image/wali_murid.jpg"/></a>
                                        </tr>
                                        <tr>
                                            <center><td bgcolor="pink"><h3><li><a href="login_wali_murid.jsp">Wali Murid</a></li></h3></td></center> 
                                        </tr>
                                    </ul>
                            </table>
                    </tr> 
                    <table widht="100%">
                    <tr>
                        <td valign="top" widht="0%">
                        <td valign="top" widht="150%">
                            <table bgcolor="gray" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head"></tr>  
                                    <ul> 
                                        <tr>
                                        <a href="login_guru.jsp"><img src="image/guru.jpg"/></a>
                                        </tr>
                                        <tr>
                                            <center><td bgcolor="pink"><h3><li><a href="login_guru.jsp">Guru</a></li></h3></td></center> 
                                        </tr>
                                    </ul>
                            </table>  <td><td>
                            <table bgcolor="gray" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head"></tr>  
                                    <ul> 
                                        <tr>
                                        <a href="login_siswa.jsp"><img src="image/siswa.jpg"/></a>
                                        </tr>
                                        <tr>
                                            <center><td bgcolor="pink"><h3><li><a href="login_siswa.jsp">Siswa</a></li></h3></td></center> 
                                        </tr>
                                    </ul>
                            </table> 
                    </tr>
                    <table widht="100%">
                    <tr>
                        <td valign="top" widht="0%">
                        <td valign="top" widht="150%">
                            <table bgcolor="gray" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head"></tr>  
                                    <ul> 
                                        <tr>
                                        <a href="login_tata_usaha.jsp"><img src="image/tata_usaha.jpg"/></a>
                                        </tr>
                                        <tr>
                                            <center><td bgcolor="pink"><h3><li><a href="login_tata_usaha.jsp">Tata Usaha</a></li></h3></td></center> 
                                        </tr>
                                    </ul>
                            </table>  
                        </td>    
                        </td>
                    </tr>
                </table>
                </div><%-- akhir dari content sebelah kanan web --%>    

                <div class="left"> <%-- awal dari content sebelah kiri web --%>                   
                <p align="center"><img src="image/gedung_sma.jpg" style="float:contour; margin:0 20px 20px 0;" width="100%" height="80%"/>    
                                                     
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
