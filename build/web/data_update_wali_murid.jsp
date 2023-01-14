<%-- 
    Document   : data_update_wali_murid
    Created on : Jun 20, 2018, 9:31:30 PM
    Author     : Haryono
--%>

<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data Wali Murid </center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>


<form action="cetak_data_wali_murid_nama_wali_murid.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Nama Wali Murid</b>
            </td>           
             <tr>
               <td>Input Nama Wali Murid:</td>
               <td><input type="text" name="nama wali murid" id="satuan" value=""></td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 

