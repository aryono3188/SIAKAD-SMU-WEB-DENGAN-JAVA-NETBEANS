<%-- 
    Document   : data_spp_siswa
    Created on : Jun 20, 2018, 10:12:09 PM
    Author     : Haryono
--%>

<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data SPP </center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>        

<form action="cetak_data_spp_nama_siswa.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>NIS</b>
            </td>           
            <tr> 
                <td>Masukan NIS</td>
                <td><select name="nama siswa" id="nama siswa">
                 <option value="Adit Zulkaidir">111232080010140100</option>
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
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 