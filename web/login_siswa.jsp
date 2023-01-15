<%-- 
    Document   : login_siswa
    Created on : Jun 20, 2018, 11:11:20 PM
    Author     : Haryono
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistem Informasi Akademik</title>
        <link rel="stylesheet" type="text/css" href="config/siakad_smu.css" media="screen" />
    </head>
    <body>
            <div id="wrap"><%-- awal dari halaman web --%>
            <div id="header"><%--awal header--%>
                <img src="image/tut_wuri_handayani_1.png">
                <%--gambar silahkan masukan logo BSI--%>
                <nobr>
                    <h1><center>Sistem Informasi Akademik</center></h1>
                    <h1><center>Sekolah Menengah Umum</center></h1>
                    <h1><center>Berbasis Web</center></h1>
                </nobr>               
            </div><%--akhir dari header--%>
            
            <div id="menu"><%-- awal dari menu atas --%>
                <ul>
                    <li><a href="index.jsp">Home</a></li>           
                </ul>
            </div><%-- akhir dari menu atas --%>
       
            <div id="content"><%-- awal dari isi content --%>
                <div class="right"> <%-- awal dari content sebelah kanan web --%>  
                    <table bgcolor="pink" border="0" width="100%" cellpadding="0" cellspacing="2">                       
                                <tr class="head">
                                    <thead>
                                        <td>
                                        <center><h2>Siswa</h2></center>
                                        </td>
                                    </thead>
                                </tr> 
                    </table><br>
                    <table widht="100%"<table bgcolor="rosybrown" border="1" cellpadding="" style="border: 5px dashed blueviolet;">
                        <tr>
                            <td valign="top" widht="0%">
                            <td valign="top" widht="110%">
                    <h2>Today</h2>
                    <ul>
                        <%!
                            public String FormatTitle(java.util.Calendar thisCal) {
                                SimpleDateFormat formatter = new java.text.SimpleDateFormat("d MMMMMMMMM yyyy");
                                return (formatter.format(thisCal.getTime()));
                            }
                            Calendar currentCal = Calendar.getInstance();
                        %>
                        <TABLE BORDER='0' CELLPADDING='1' CELLSPACING='2'id="tanggalweb" width="100px" id="tanggalan">
                            <TR>
                                <TD CLASS='titleStyle' COLSPAN='7'>
                                    <%= FormatTitle(currentCal)%>
                                </TD>
                            </TR>
                            <TR>
                                <TD width=15% CLASS='dayHeading'>Sen</TD>
                                <TD width=15% CLASS='dayHeading'>Sel</TD>
                                <TD width=15% CLASS='dayHeading'>Rab</TD>
                                <TD width=15% CLASS='dayHeading'>Kam</TD>
                                <TD width=15% CLASS='dayHeading'>Jum</TD>
                                <TD width=15% CLASS='dayHeading'>Sab</TD>
                                <TD width=15% CLASS='dayHeading'>Min</TD>
                            </TR>
                            <%
                                int currentDay = currentCal.get(currentCal.DAY_OF_MONTH);
                                int daysInMonth = currentCal.getActualMaximum(currentCal.DAY_OF_MONTH);

                                currentCal.set(currentCal.DAY_OF_MONTH, 0);
                                int dayOfWeek = currentCal.get(currentCal.DAY_OF_WEEK);

                                if (dayOfWeek != 1) {
                                    out.println(" <TD COLSPAN=" + (dayOfWeek - 1) + ">&nbsp;</TD>");
                                }

                                for (int day = 1; day <= daysInMonth; day++) {
                                    if (day == currentDay) {
                                        out.println(" <TD CLASS='hariSekarang'>" + day + "</TD>");
                                    } else {
                                        out.println(" <TD CLASS='hariLainnya'>" + day + "</TD>");
                                    }
                                    if (dayOfWeek == 7) {
                                        out.println(" </TR>\n\n <TR>");
                                        dayOfWeek = 1;
                                    } else {
                                        dayOfWeek++;
                                    }
                                }
                                if ((8 - dayOfWeek) != 0) {
                                    out.println(" <TD COLSPAN=" + (8 - dayOfWeek) + ">&nbsp;</TD>");
                                }
                            %>
                        </TABLE>                             
                    </ul>
                                <STYLE TYPE="text/css">
                                        TD
                                          {
                                            font-family: Arial, Helvetica, sans-serif;
                                            font-size: 10pt; text-align: left;
                                          }

                                        .hariSekarang
                                          {
                                            color: #FF0000; background-color: #EEEEEE;
                                          }

    .hariLainnya
    {
        color: #666699; background-color: #EEEEEE;
    }

    .dayHeading
    {
        font-size: 9pt; color: #666699;
    }

    .titleStyle
    {
        font-size: 14pt; color: #FFFFFF;
        background-color: #666699; text-align: left;
        font-weight: bold;
    }
</STYLE>
                    
                            </td>    
                            </td>
                        </tr>
                    </table>
                </div>
                        
        <div class="left"> <%-- awal dari content sebelah kiri web --%>                   
                    <table width="100%">
                        <tr>
                        <td valign="top" width="110%">
                                <%-- isi dari content kiri --%>
                                <br>
        <br>                       
        <form method="post" action="sukses_siswa.jsp"> 
            <center>
            <table bgcolor="chartreuse" border="1" width="40%" cellpadding="20" style="border: 5px dashed red;">
                <thead>
                    <tr>
                        <th colspan="2">Login Siswa</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="usname_siswa" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass_siswa" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                </tbody>
            </table>
            </center>
                     </td>
                </tr>      
            </table>  
                <div class="footer"> <%--awal dari content footer web --%>
                 
        support by <a href="">Junior Programmer Mahasiswa Program Study Komputerisasi Akuntansi BSI MARGONDA DEPOK</a>,
                   <a href="">Copyright &copy; 12 April 2018 by Haryono,– All Right Reserved</a>.
                              
                 <br>
                 <%=new java.util.Date()%>
                </div>
        </div>
            <div style="clear:both;"> 
            </div>
            
            </div><%--akhir dari halaman web --%>
            
       
        </form>
    </body>
</html>


