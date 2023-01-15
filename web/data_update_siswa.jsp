<%-- 
    Document   : data_update_siswa
    Created on : Jun 21, 2018, 9:07:55 AM
    Author     : Haryono
--%>

<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="cetak_data_siswa_nama_siswa.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Nama Siswa</b>
            </td>           
             <tr>
               <td>Input Nama Siswa:</td>
               <td><input type="text" name="nama siswa" id="satuan" value=""></td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 


