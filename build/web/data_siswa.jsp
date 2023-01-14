<%-- 
    Document   : data_siswa
    Created on : Jun 14, 2018, 3:07:31 PM
    Author     : Haryono
--%>

<sql:query var="qrysiswa" dataSource="${dataSource}">
    SELECT*FROM siswa 
    WHERE nis like'%${param.cari}%'
    OR nama_siswa like'%${param.cari}%'
</sql:query>

<%
 String cari = request.getParameter("cari");
%>
<br><fornt color="white">  <h2> <center> Data Siswa </center> </h2> </fornt>
   
<br><form action="" method="post"> <br>
        Cari Data Siswa : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/> <br>       
    </form><br>
        
    <h3> Data Pribadi <% out.println(cari);%>  </h3> <br/>
    
        <table border="0" width="100%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>NIS</td>
                <td>Nama Siswa</td>
                <td>Jenis Kelamin</td>
                <td>Agama</td>
                <td>Tempat Lahir</td>
                <td>Tanggal Lahir</td>
                <td>Alamat</td>
                <td>Nomor Telepon</td>
                <td>User Name</td>
                <td>Password</td>
            </tr>
            <c:forEach var="rowsiswa" items="${qrysiswa.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowsiswa[0]}</td>
                    <td valign='top'>${rowsiswa[1]}</td>
                    <td valign='top' align="center">${rowsiswa[2]}</td>
                    <td valign='top' align="center">${rowsiswa[3]}</td>
                    <td valign='top' align="center">${rowsiswa[4]}</td>   
                    <td valign='top' align="center">${rowsiswa[5]}</td>
                    <td valign='top' align="center">${rowsiswa[6]}</td>
                    <td valign='top' align="center">${rowsiswa[7]}</td> 
                    <td valign='top' align="center">${rowsiswa[8]}</td>
                    <td valign='top' align="center">${rowsiswa[9]}</td>  
                </tr>
            </c:forEach>
        </table><br><br>
                
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data Siswa </center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="cetak_data_siswa.jsp" method="post">
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

<form action="cetak_data_siswa_nama_siswa.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Nama Siswa</b>
            </td>           
             <tr>
               <td>Input Nama Siswa:</td>
               <td><input type="text" name="nama siswa" id="satuan" value=""></td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 

<form action="cetak_data_siswa_jenis_kelamin.jsp" method="post">
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
