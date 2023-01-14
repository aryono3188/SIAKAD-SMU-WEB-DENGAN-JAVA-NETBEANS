<%-- 
    Document   : tampil_spp
    Created on : Jun 1, 2018, 9:06:05 PM
    Author     : Haryono
--%>

<sql:query var="qryspp" dataSource="${dataSource}">
    SELECT*FROM spp 
    WHERE nis like'%${param.cari}%'
    OR bulan like'%${param.cari}%'
</sql:query>

<%
 String cari = request.getParameter("cari");
%>

<br><fornt color="white">  <h2> <center> Data SPP </center> </h2> </fornt>
    <br>
    <table bgcolor="gray" border="0" width="20%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                     <a href="indexadmin.jsp?halaman=spp&aksi=SIMPAN"> Tambah Data SPP </a>
                </td>
            </thead>
        </tr> 
    </table><br>
   
    <form action="" method="post"> <br>
        Cari Data SPP : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/> <br>       
    </form><br>
        
    <h3> Data SPP Siswa : <% out.println(cari);%> </h3><br/>
    
        <table border="0" width="100%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Nomor</td>
                <td>Nama Siswa</td>
                <td>Bulan</td>
                <td>Tanggal Bayar</td>
                <td>Jumlah</td>
                <td>Nama pegawai</td>
                <td>Action</td>
            </tr>
            <c:forEach var="rowspp" items="${qryspp.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowspp[0]}</td>
                    <td valign='top'>${rowspp[1]}</td>
                    <td valign='top'>${rowspp[2]}</td>
                    <td valign='top'>${rowspp[3]}</td>   
                    <td valign='top'>${rowspp[4]}</td> 
                    <td valign='top'>${rowspp[5]}</td> 
                    <td align='center'>
                        <a href='aksi_spp?aksi=HAPUS&id_spp=${rowspp[0]}'>Hapus</a> |
                        <a href='indexadmin.jsp?halaman=spp&aksi=GANTI&id_spp=${rowspp[0]}
                           &"nis=${rowspp[1]}&bulan=${rowspp[2]}
                           &tanggal_bayar=${rowspp[3]}&jumlah=${rowspp[4]}
                           &nip_t_u=${rowspp[5]}'> Edit </a>                         
                    </td>
                </tr>
            </c:forEach>
        </table>

