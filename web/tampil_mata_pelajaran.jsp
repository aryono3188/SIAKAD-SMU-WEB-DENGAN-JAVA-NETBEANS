<%-- 
    Document   : tampil_mata_pelajaran
    Created on : Apr 13, 2018, 9:01:02 PM
    Author     : Haryono
--%>

<sql:query var="qrymata_pelajaran" dataSource="${dataSource}">
    SELECT*FROM mata_pelajaran 
    WHERE kode_pelajaran like'%${param.cari}%'
    OR nama_pelajaran like'%${param.cari}%'
</sql:query>

<%
 String cari = request.getParameter("cari");
%>

<br><fornt color="white">  <h2> <center> Data Mata Pelajaran </center> </h2> </fornt>
    <br>
     <table bgcolor="gray" border="0" width="20%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                    <a href="indexadmin.jsp?halaman=mata_pelajaran&aksi=SIMPAN"> Tambah Mata Pelajaran </a>
                </td>
            </thead>
        </tr> 
    </table><br>
    
    <form action="" method="post"> <br>
        Cari Mata Pelajaran : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/> <br>       
    </form><br>
        
      <h3> Nama Pelajaran <% out.println(cari);%>  </h3> <br/>
      
        <table border="0" width="90%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Kode Pelajaran</td>
                <td>Nama Pelajaran</td>
                <td>Action</td>
            </tr>
            <c:forEach var="rowmata_pelajaran" items="${qrymata_pelajaran.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowmata_pelajaran[0]}</td>
                    <td valign='top'>${rowmata_pelajaran[1]}</td>   
                    <td align='center'>
                        <a href='aksi_mata_pelajaran?aksi=HAPUS&kode_pelajaran=${rowmata_pelajaran[0]}'>Hapus</a> |
                        <a href='indexadmin.jsp?halaman=mata_pelajaran&aksi=GANTI&kode_pelajaran=${rowmata_pelajaran[0]}
                           &nama_pelajaran=${rowmata_pelajaran[1]}'> Edit </a>                         
                    </td>
                </tr>
            </c:forEach>
        </table>
