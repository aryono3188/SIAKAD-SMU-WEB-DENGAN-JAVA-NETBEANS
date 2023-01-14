<%-- 
    Document   : admin
    Created on : Apr 13, 2018, 8:03:37 AM
    Author     : Haryono
--%>

<sql:query var="qryadmin" dataSource="${dataSource}">
    SELECT*FROM admin 
    WHERE usname_admin like'%${param.cari}%'
    OR pass_admin like'%${param.cari}%'
</sql:query>

<br>
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Input Data Admin</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="aksi_admin" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">Nomor</td>
                <td><input type="text" name="id_admin" value="${param.id_admin}"/></td>
            </tr>
            <tr> 
                <td>Nama Admin</td>
                <td><input type="text" name="nama_admin" value="${param.nama_admin}"/></td>
            </tr>
            <tr> 
                <td>User Name</td>
                <td><input type="text" name="usname_admin" value="${param.usname_admin}"/></td>
            </tr> 
            <tr>
                <td>Password</td>
                <td><input type="text" name="pass_admin" value="${param.pass_admin}"/></td> 
            </tr>          
                <td>Email</td>
                <td><input type="text" name="email" value="${param.email}"/></td> 
            <tr> 
                <td>Regdate</td>
                <td><input type="date" name="regdate" value="${param.regdate}"/></td> 
            </tr>     
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    
       
        
    


