<%-- 
    Document   : tampil_tata_usaha
    Created on : Jun 1, 2018, 11:17:55 PM
    Author     : Haryono
--%>

<sql:query var="qrytata_usaha" dataSource="${dataSource}">
    SELECT*FROM tata_usaha 
    WHERE nama_t_u like'%${param.cari}%'
    OR nip_t_u like'%${param.cari}%'
</sql:query>

<%
 String cari = request.getParameter("cari");
%>

<br><fornt color="white">  <h2> <center> Data Tata Usaha </center> </h2> </fornt>
    <br>
    <table bgcolor="gray" border="0" width="20%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                    <a href="indexadmin.jsp?halaman=tata_usaha&aksi=SIMPAN"> Tambah Tata Usaha </a>
                </td>
            </thead>
        </tr> 
    </table><br>
    
    <form action="" method="post"> <br>
        Cari Data T_U : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/> <br>       
    </form><br>
        
    <h3>  Data Pribadi  <% out.println(cari);%>  </h3> <br/>
    
        <table border="0" width="90%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>NIP</td>
                <td>Nama Pegawai</td>
                <td>Alamat</td>
                <td>User Name</td>
                <td>Password</td>
                <td>Action</td>
            </tr>
            <c:forEach var="rowtata_usaha" items="${qrytata_usaha.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowtata_usaha[0]}</td>
                    <td valign='top'>${rowtata_usaha[1]}</td>
                    <td valign='top' align="center">${rowtata_usaha[2]}</td>
                    <td valign='top' align="center">${rowtata_usaha[3]}</td>
                    <td valign='top' align="center">${rowtata_usaha[4]}</td>    
                    <td align='center'>
                        <a href='aksi_tata_usaha?aksi=HAPUS&nip_t_u=${rowtata_usaha[0]}'>Hapus</a> |
                        <a href='indexadmin.jsp?halaman=tata_usaha&aksi=GANTI&nip_t_u=${rowtata_usaha[0]}
                           &nama_t_u=${rowtata_usaha[1]}&alamat_t_u=${rowtata_usaha[2]}
                           &usname_t_u=${rowtata_usaha[3]}&pass_t_u=${rowtata_usaha[4]}'> Edit </a>                         
                    </td>
                </tr>
            </c:forEach>
        </table>
