<%-- 
    Document   : tampil_jadwal_pelajaran
    Created on : May 13, 2018, 7:38:22 PM
    Author     : Haryono
--%>

<sql:query var="qryjadwal_pelajaran" dataSource="${dataSource}">
    SELECT * FROM jadwal_pelajaran 
    WHERE kode_kelas LIKE '%${param.cari}%' 
    OR kode_pelajaran LIKE '%${param.cari}%'
</sql:query>

<%
 String cari = request.getParameter("cari");
%>

<br><fornt color="white"> <h2> <center> Data Jadwal Pelajaran </center> </h2> </fornt>
    <br>
    <table bgcolor="gray" border="0" width="20%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                    <a href="indexadmin.jsp?halaman=jadwal_pelajaran&aksi=SIMPAN"> Tambah Jadwal Pelajaran </a>
                </td>
            </thead>
        </tr> 
    </table><br>
    
    <form action="" method="post"> <br>
        Jadwal Pelajaran Kelas: <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/><br>      
    </form><br>
        
    <h3> Jadwal Pelajaran Kelas <% out.println(cari);%>  </h3> <br/>
    
        <table border="0" width="100%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Nomor</td>
                <td>Nama Kelas</td>
                <td>Nama Pelajaran</td>
                <td>Nama Guru</td>
                <td>Hari</td>
                <td>Jam Pelajaran</td>
                <td>Action</td>
            </tr>
            <c:forEach var="rowjadwal_pelajaran" items="${qryjadwal_pelajaran.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowjadwal_pelajaran[0]}</td>
                    <td valign='top'>${rowjadwal_pelajaran[1]}</td>
                    <td valign='top' align="center">${rowjadwal_pelajaran[2]}</td>
                    <td valign='top' align="center">${rowjadwal_pelajaran[3]}</td>
                    <td valign='top' align="center">${rowjadwal_pelajaran[4]}</td>
                    <td valign='top' align="center">${rowjadwal_pelajaran[5]}</td>
                    <td align='center'>
                        <a href='aksi_jadwal_pelajaran?aksi=HAPUS&id_jadwal_pelajaran=${rowjadwal_pelajaran[0]}'>Hapus</a> |
                        <a href='indexadmin.jsp?halaman=jadwal_pelajaran&aksi=GANTI&id_jadwal_pelajaran=${rowjadwal_pelajaran[0]}
                           &kode_kelas=${rowjadwal_pelajaran[1]}&kode_pelajaran=${rowjadwal_pelajaran[2]}
                           &nip_guru=${rowjadwal_pelajaran[3]}&hari=${rowjadwal_pelajaran[4]}
                           &jam_pelajaran=${rowjadwal_pelajaran[5]}'> Edit </a>                           
                    </td>
                </tr>
            </c:forEach>
        </table>

