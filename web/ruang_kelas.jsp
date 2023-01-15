<%-- 
    Document   : ruang_kelas
    Created on : Apr 13, 2018, 10:01:16 PM
    Author     : Haryono
--%>

<br>
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Input Data Kelas</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="aksi_ruang_kelas" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">Kode Kelas</td>
                <td><input type="Int" name="kode_kelas" value="${param.kode_kelas}"/></td>
            </tr>
            <tr> 
                <td>Nama Kelas</td>
                <td><input type="text" name="nama_kelas" value="${param.nama_kelas}"/></td>
            </tr>
            <tr> 
                <td>Jumlah murid</td>
                <td><input type="text" name="jumlah_murid" value="${param.jumlah_murid}"/></td>
            </tr> 
            <tr>     
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    

