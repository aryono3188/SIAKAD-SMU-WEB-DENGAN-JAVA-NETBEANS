<%-- 
    Document   : tampil_siswa
    Created on : Apr 13, 2018, 7:55:10 PM
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
    <br>
    <table bgcolor="gray" border="0" width="20%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                    <a href="indexadmin.jsp?halaman=siswa&aksi=SIMPAN"> Tambah Siswa </a>
                </td>
            </thead>
        </tr> 
    </table><br>
    
    <form action="" method="post"> <br>
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
                <td>Action</td>
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
                    <td align='center'>
                        <a href='aksi_siswa?aksi=HAPUS&nis=${rowsiswa[0]}'>Hapus</a> |
                        <a href='indexadmin.jsp?halaman=siswa&aksi=GANTI&nis=${rowsiswa[0]}
                           &nama_siswa=${rowsiswa[1]}&jenis_kelamin_siswa=${rowsiswa[2]}
                           &agama=${rowsiswa[3]}&tempat_lahir=${rowsiswa[4]}
                           &tanggal_lahir=${rowsiswa[5]}&alamat_siswa=${rowsiswa[6]}
                           &no_telepon_siswa=${rowsiswa[7]}&usname_siswa=${rowsiswa[8]}
                           &pass_siswa=${rowsiswa[9]}'> Edit </a>                         
                    </td>
                </tr>
            </c:forEach>
        </table>
