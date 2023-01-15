<%-- 
    Document   : tampil_update_guru
    Created on : Jun 17, 2018, 10:44:56 PM
    Author     : Haryono
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

        
<% 
      String nip_guru = request.getParameter("nip_guru");
      String nama_guru = request.getParameter("nama_guru");
      String jenis_kelamin = request.getParameter("jenis_kelamin");
      String usname_guru = request.getParameter("usname_guru");
      String pass_guru = request.getParameter("pass_guru");
      String wali_kelas = request.getParameter("wali_kelas");
      String alamat = request.getParameter("alamat");
      String no_telepon = request.getParameter("no_telepon");
%>

<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>New Data Pribadi</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>
<center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <tr> 
                <td>NIP</td>
                <td><% out.println(nip_guru);%></td>
            </tr>
            <tr> 
                <td>Nama Guru</td>
                <td><% out.println(nama_guru);%></td>
            </tr>
            <tr>
                <td>Jenis Kelamin</td>
                <td> <% out.println(jenis_kelamin);%></td>
            </tr>    
            <tr>
                <td>User Name</td>
                <td><% out.println(usname_guru);%></td> 
            </tr> 
            <tr>
                <td>Password</td>
                <td><% out.println(pass_guru);%></td> 
            </tr>          
                <td>Wali Kelas</td>
                <td><% out.println(wali_kelas);%></td> 
            <tr> 
                <td>Alamat</td>
                <td><% out.println(alamat);%></td> 
            </tr>   
            <tr> 
                <td>Nomor Telepon</td>
                <td><% out.println(no_telepon);%></td> 
            </tr> 
        </table>
    </center>
</form>   </br> 

<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Update Data </center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="cetak_update_guru.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
            <td>
                <input type="radio" name="cetak" value=""><b>Cetak</b>
            </td>           
            <td>
                <input type="submit" value="Proses">
            </td>            
        </table>
    </center>
</form> 

