<%-- 
    Document   : cetak_update_guru
    Created on : Juni 19, 2018, 5:15:49 PM
    Author     : Haryono
--%>

<sql:query var="qryguru" dataSource="${dataSource}">
    SELECT*FROM guru 
    WHERE nama_guru like'%${param.cari}%'
    OR pass_guru like'%${param.cari}%'
</sql:query>

<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data Guru </center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>


<form action="cetak_data_guru_nama_guru.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Nama Guru</b>
            </td>           
             <tr>
               <td>Input Nama Guru:</td>
               <td><input type="text" name="nama guru" id="satuan" value=""></td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 

