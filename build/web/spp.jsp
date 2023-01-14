<%-- 
    Document   : spp
    Created on : Jun 1, 2018, 8:52:57 PM
    Author     : Haryono
--%>

<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Input SPP</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="aksi_spp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">Nomor</td>
                <td><input type="text" name="id_spp" value="${param.id_spp}"/></td>
            </tr>
             <tr> 
                <td>NIS</td>
                <td><select name="nis" value="${param.nis}">
                    <option value="">Pilih NIS</option>
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
                <td>Bulan</td>
                <td><input type="text" name="bulan" value="${param.bulan}"/></td> 
            </tr>          
                <td>Tanggal Bayar</td>
                <td><input type="date" name="tanggal_bayar" value="${param.tanggal_bayar}"/></td> 
            <tr> 
                <td>Jumlah</td>
                <td><input type="text" name="jumlah" value="${param.jumlah}"/></td> 
            </tr>   
            <tr>
                <td>NIP</td>
                <td><select name="nip_t_u" value="${param.nip_t_u}">
                    <option value="">Pilih NIP</option>
                    <option value="Tatang">198307152015022050</option>
                    <option value="Asep Suparna">198307152015022055</option>
                    </select> 
                </td>
            </tr> 
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    