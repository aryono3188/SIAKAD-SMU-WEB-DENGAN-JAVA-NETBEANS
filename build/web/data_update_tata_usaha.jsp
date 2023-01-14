<%-- 
    Document   : data_update_tata_usaha
    Created on : Jun 20, 2018, 12:22:37 PM
    Author     : Haryono
--%>

<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data Tata Usaha </center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>


<form action="cetak_data_tata_usaha_nama_T_U.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Nama T U</b>
            </td>           
             <tr>
               <td>Input Nama T U:</td>
               <td><input type="text" name="nama T U" id="satuan" value=""></td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 


