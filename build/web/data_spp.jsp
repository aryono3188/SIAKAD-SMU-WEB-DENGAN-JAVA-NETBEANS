<%-- 
    Document   : data_spp
    Created on : Jun 17, 2018, 12:00:55 AM
    Author     : Haryono
--%>

<sql:query var="qryspp" dataSource="${dataSource}">
    SELECT*FROM spp 
    WHERE nis like'%${param.cari}%'
    OR bulan like'%${param.cari}%'
</sql:query>

<%
 String cari = request.getParameter("cari");
%>

<br><fornt color="white">  <h2> <center> Data SPP </center> </h2> </fornt> <br>
   
    <form action="" method="post"> <br>
        Cari Data SPP : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/> <br>       
    </form><br>
        
    <h3> Data SPP Siswa : <% out.println(cari);%> </h3><br/>
    
        <table border="0" width="100%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Nomor</td>
                <td>Nama Siswa</td>
                <td>Bulan</td>
                <td>Tanggal Bayar</td>
                <td>Jumlah</td>
                <td>Nama Pegawai</td>
            </tr>
            <c:forEach var="rowspp" items="${qryspp.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowspp[0]}</td>
                    <td valign='top'>${rowspp[1]}</td>
                    <td valign='top'>${rowspp[2]}</td>
                    <td valign='top'>${rowspp[3]}</td>   
                    <td valign='top'>${rowspp[4]}</td> 
                    <td valign='top'>${rowspp[5]}</td> 
                </tr>
            </c:forEach>
        </table><br><br>

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
        
<form action="cetak_data_spp.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
            <td>
                <input type="radio" name="cetak" value=""><b>Semua</b>
            </td>           
            <td>
                <input type="submit" value="Proses">
            </td>            
        </table>
    </center>
</form> 

<form action="cetak_data_spp_nama_siswa.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>NIS</b>
            </td>           
            <tr> 
                <td>Masukan NIS</td>
                <td><select name="nama siswa" id="nama siswa">
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
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 

