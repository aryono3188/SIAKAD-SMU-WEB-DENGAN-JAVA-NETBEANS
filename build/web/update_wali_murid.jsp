<%-- 
    Document   : update_wali_murid
    Created on : Jun 20, 2018, 8:44:49 PM
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

<form action="proses_update_wali_murid.jsp" method="post">
    
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">Nomor</td>
                <td><input type="text" name="id_wali_murid" value="${param.id_wali_murid}"/></td>
            </tr>
            <tr> 
                <td>Nama Wali Murid</td>
                <td><input type="text" name="nama_wali_murid" value="${param.nama_wali_murid}"/></td>
            </tr> 
            <tr> 
                <td>NIS</td>
                <td><select name="nis" id="nis">
                    <option value="">=Pilih Nis=</option>
                     <option value="Adit Zulkaidir">111232080010140100</option>
                    <option value="Alifah Akmarini">111232080010140101</option>
                    <option value="Ali Fuady">111232080010140102</option>
                    <option value="Amelia Putri">111232080010140103</option>
                    <option value="Antonius">111232080010140104</option>
                    <option value="Arini Putri">111232080010140105</option>
                    <option value="Bayu Septiawan">111232080010140106</option>
                    <option value="Hadid Asyifa">111232080010140107</option>
                    <option value="Indra Kurniawan">111232080010140108</option>
                    <option value="Realita Dwinanda">111232080010140109</option>
                </select> 
                </td>
             </tr>
            <tr>
                <td>Alamat</td>
                <td><input type="text" name="alamat_walmur" value="${param.alamat_walmur}"/></td> 
            </tr>
            <tr>
                <td>Nomor Telepon</td>
                <td><input type="text" name="no_telepon_walmur" value="${param.no_telepon_walmur}"/></td> 
            </tr>
            <tr>
                <td>User Name</td>
                <td><input type="text" name="usname_wali_murid" value="${param.usname_wali_murid}"/></td> 
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="text" name="pass_wali_murid" value="${param.pass_wali_murid}"/></td> 
            <tr>
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            </tr>
        </table>
    </center>
</form>    
