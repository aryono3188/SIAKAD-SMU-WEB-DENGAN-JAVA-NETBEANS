<%-- 
    Document   : data_guru
    Created on : Jun 13, 2018, 9:37:38 PM
    Author     : Haryono
--%>

<sql:query var="qryguru" dataSource="${dataSource}">
    SELECT*FROM guru 
    WHERE nama_guru like'%${param.cari}%'
    OR nip_guru like'%${param.cari}%'
</sql:query>

<%
 String cari = request.getParameter("cari");
%>

<br><fornt color="white">  <h2> <center> Data Guru </center> </h2> </fornt><br>
    
    <form action="" method="post"> <br>
        Cari Data Guru : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/> <br>       
    </form><br>
        
     <h3> Data Pribadi <% out.println(cari);%> </h3> <br/>
     
        <table border="0" width="100%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>NIP</td>
                <td>Nama Guru</td>
                <td>Jenis Kelamin</td>
                <td>User Name</td>
                <td>Password</td>
                <td>Wali Kelas</td>
                <td>Alamat</td>
                <td>Nomor Telepon</td>
            </tr>
            
            <c:forEach var="rowguru" items="${qryguru.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowguru[0]}</td>
                    <td valign='top'>${rowguru[1]}</td>
                    <td valign='top' align="center">${rowguru[2]}</td>
                    <td valign='top' align="center">${rowguru[3]}</td>
                    <td valign='top' align="center">${rowguru[4]}</td>
                    <td valign='top' align="center">${rowguru[5]}</td>
                    <td valign='top' align="center">${rowguru[6]}</td> 
                    <td valign='top' align="center">${rowguru[7]}</td> 
                </tr>
            </c:forEach>
        </table><br><br>

    <center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data Guru </center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="cetak_data_guru.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
            <td>
                <input type="radio" name="cetak" value=""><b>Semua</b>
            </td>           
            <td>
                <input type="submit" value="Proses">
            </td>            
        </table>
    </center>
</form> 

<form action="cetak_data_guru_nama_guru.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Nama Guru</b>
            </td>           
             <tr>
               <td>Input Nama Guru:</td>
               <td><input type="text" name="nama guru" id="satuan" value=""></td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 

<form action="cetak_data_guru_jenis_kelamin.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Jenis Kelamin</b>
            </td>           
             <tr>
               <td>Input L / P:</td>
               <td><input type="text" name="jenis kelamin" id="satuan" value=""></td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 