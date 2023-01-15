<%-- 
    Document   : tampil_admin
    Created on : Apr 13, 2018, 8:24:27 AM
    Author     : Haryono
--%>

<sql:query var="qryadmin" dataSource="${dataSource}">
    SELECT*FROM admin 
    WHERE nama_admin like'%${param.cari}%'
    OR pass_admin like'%${param.cari}%'
</sql:query>
    
<%
String cari = request.getParameter("cari");
%>

<br><fornt color="white"> <h2> <center> Data Admin </center> </h2> </fornt>
    <br>
     <table bgcolor="gray" border="0" width="15%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                    <a href="indexadmin.jsp?halaman=admin&aksi=SIMPAN"> Tambah Admin </a>
                </td>
            </thead>
        </tr> 
    </table><br>
    
    <form action="" method="post"> <br>
        Cari Data Admin : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/><br>      
    </form><br>
        
    <h3> Selamat Datang  , <%out.println(cari);%> ini Data Pribadi Anda. </h3> <br/>
     
        <table border="0" width="90%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Nomor</td>
                <td>Nama Admin</td>
                <td>User Name</td>
                <td>Password</td>
                <td>Email</td>
                <td>Regdate</td>
                <td>Action</td>
            </tr>
            <c:forEach var="rowadmin" items="${qryadmin.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowadmin[0]}</td>
                    <td valign='top'>${rowadmin[1]}</td>
                    <td valign='top' align="center">${rowadmin[2]}</td>
                    <td valign='top' align="center">${rowadmin[3]}</td>
                    <td valign='top' align="center">${rowadmin[4]}</td>
                    <td valign='top' align="center">${rowadmin[5]}</td>  
                    <td align='center'>
                        <a href='aksi_admin?aksi=HAPUS&id_admin=${rowadmin[0]}'>Hapus</a> |
                        <a href='indexadmin.jsp?halaman=admin&aksi=GANTI&id_admin=${rowadmin[0]}
                           &nama_admin=${rowadmin[1]}&usname_admin=${rowadmin[2]}
                           &pass_admin=${rowadmin[3]}&email=${rowadmin[4]}
                           &regdate=${rowadmin[5]}'> Edit </a>                         
                    </td>
                </tr>
            </c:forEach>
        </table>
