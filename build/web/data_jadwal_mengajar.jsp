<%-- 
    Document   : data_jadwal_mengajar
    Created on : Jun 19, 2018, 10:55:02 PM
    Author     : Haryono
--%>

<sql:query var="qryjadwal_pelajaran" dataSource="${dataSource}">
    SELECT * FROM jadwal_pelajaran 
    WHERE kode_kelas LIKE '%${param.cari}%' 
    OR nip_guru LIKE '%${param.cari}%'
</sql:query>

<%
 String cari = request.getParameter("cari");
%>

<br><fornt color="white"> <h2> <center> Data Jadwal Mengajar </center> </h2> </fornt> <br>
    
    <form action="" method="post"> <br>
        Nama Guru : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/><br>      
    </form><br>
        
     <h3> Jadwal Mengajar: <% out.println(cari);%> </h3><br/>
     
        <table border="0" width="100%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Nomor</td>
                <td>Nama Kelas</td>
                <td>Nama Pelajaran</td>
                <td>Nama Guru</td>
                <td>Hari</td>
                <td>Jam Pelajaran</td>
            </tr>
            <c:forEach var="rowjadwal_pelajaran" items="${qryjadwal_pelajaran.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowjadwal_pelajaran[0]}</td>
                    <td valign='top'>${rowjadwal_pelajaran[1]}</td>
                    <td valign='top' align="center">${rowjadwal_pelajaran[2]}</td>
                    <td valign='top' align="center">${rowjadwal_pelajaran[3]}</td>
                    <td valign='top' align="center">${rowjadwal_pelajaran[4]}</td>
                    <td valign='top' align="center">${rowjadwal_pelajaran[5]}</td>
                </tr>
            </c:forEach>
        </table><br>

    <center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data Jadwal Mengajar</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="cetak_data_jadwal_pelajaran_nama_guru.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>NIP Guru</b>
            </td>           
             <tr> 
                <td>Masukan NIP Guru</td>
                <td><select name="nama guru" id="nama guru">
                <option value="">=Pilih Nip=</option>
                <option value="Alfat Azre Rahim, Spd">198601052017041001</option>
                <option value="Melatul Azrina, Spd">198602072017042002</option>
                <option value="Najwa Ari Wibowo, Spd">198403072017011003</option>
                <option value="Haryadi, Spd">198503072017011003</option>
                <option value="Daryanti, Spd">198706072016082005</option>
                <option value="Fery Irawan, Spd">198304022015051006</option>
                <option value="Suyatno, Spd">198002022017051007</option>
                <option value="Haryanto, Spd">198109092017081008</option>
                <option value="M Rizky, Spd">198107072017071009</option>
                <option value="Sulastri, Spd">198404072017032010</option>
                <option value="Nabilla Azrina, Spd">198206082016042011</option>
                <option value="Hadi Purnomo, Spd">198008072017081012</option>
                <option value="M. Bhakti, Spd">198201092014081013</option>
                <option value="Wahyuningsih Putri, Spd">198307152015022014</option>
                </select> 
                </td>       
            </tr>   
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 