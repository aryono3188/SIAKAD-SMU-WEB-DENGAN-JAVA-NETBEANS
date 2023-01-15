<%-- 
    Document   : tampil_guru
    Created on : Apr 13, 2018, 2:22:04 PM
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

<br><fornt color="white">  <h2> <center> Data Guru </center> </h2> </fornt>
    <br>
    <table bgcolor="gray" border="0" width="15%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                    <a href="indexadmin.jsp?halaman=guru&aksi=SIMPAN"> Tambah Guru </a>
                </td>
            </thead>
        </tr> 
    </table><br>
    
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
                <td>Action</td>
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
                    <td align='center'>
                        <a href='aksi_guru?aksi=HAPUS&nip_guru=${rowguru[0]}'>Hapus</a> |
                        <a href='indexadmin.jsp?halaman=guru&aksi=GANTI&nip_guru=${rowguru[0]}
                           &nama_guru=${rowguru[1]}&jenis_kelamin_guru=${rowguru[2]}
                           &usname_guru=${rowguru[3]}&pass_guru=${rowguru[4]}&wali_kelas=${rowguru[5]}
                           &alamat_guru=${rowguru[6]}&no_telepon_guru=${rowguru[7]}'> Edit </a>                             
                    </td>
                </tr>
            </c:forEach>
        </table>
