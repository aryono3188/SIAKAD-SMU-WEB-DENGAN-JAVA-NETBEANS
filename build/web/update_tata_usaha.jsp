<%-- 
    Document   : update_tata_usaha
    Created on : Jun 20, 2018, 11:28:09 AM
    Author     : Haryono
--%>

<br>
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Update Data Pribadi</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="proses_update_tata_usaha.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td>NIP</td>
                <td><input type="text" name="nip_t_u" value="${param.nip_t_u}"/></td>
            </tr>
            <tr> 
                <td>Nama Pegawai</td>
                <td><input type="text" name="nama_t_u" value="${param.nama_t_u}"/></td>
            </tr>
            <tr> 
                <td>Alamat</td>
                <td><input type="text" name="alamat_t_u" value="${param.alamat_t_u}"/></td>
            </tr> 
            <tr>
                <td>User Name</td>
                <td><input type="text" name="usname_t_u" value="${param.usname_t_u}"/></td> 
            </tr>
                <td>Password</td>
                <td><input type="text" name="pass_t_u" value="${param.pass_t_u}"/></td> 
            </tr>     
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    

