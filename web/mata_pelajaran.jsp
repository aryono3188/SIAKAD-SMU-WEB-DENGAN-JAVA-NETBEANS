<%-- 
    Document   : mata_pelajaran
    Created on : Apr 13, 2018, 8:46:43 PM
    Author     : Haryono
--%>

<br>
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Input Data Mata Pelajaran</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="aksi_mata_pelajaran" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">Kode Pelajaran</td>
                <td><input type="text" name="kode_pelajaran" value="${param.kode_pelajaran}"/></td>
            </tr>
            <tr> 
                <td>Nama Pelajaran</td>
                <td><input type="text" name="nama_pelajaran" value="${param.nama_pelajaran}"/></td>
            </tr>
            <tr>    
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    

