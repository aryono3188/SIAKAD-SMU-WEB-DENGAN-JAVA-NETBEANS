<%-- 
    Document   : data_nilai_siswa
    Created on : Jun 16, 2018, 3:04:16 PM
    Author     : Haryono
--%>

<sql:query var="qrynilai_siswa" dataSource="${dataSource}">
    SELECT * FROM nilai_siswa
    WHERE kode_kelas LIKE '%${param.cari}%' 
    OR nis LIKE '%${param.cari}%'
</sql:query>

<%
 String cari = request.getParameter("cari");
%>

<br><fornt color="white"> <h2> <center> Nilai Siswa </center> </h2> </fornt><br>
   
    <form action="" method="post"> <br>
        Nama Siswa/Kelas: <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/><br>      
    </form><br>
      
    <h3> Nilai Siswa/Kelas: <% out.println(cari);%> </h3><br/>
    
        <table border="0" width="100%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Nomor</td>
                <td>Nama Siswa</td>
                <td>Kelas</td>
                <td>Mata Pelajaran</td>
                <td>Semester</td>
                <td>Tahun Ajaran</td>
                <td>Tugas</td>
                <td>UTS</td>
                <td>UAS</td>
                <td>Nilai</td>
            </tr>
            <c:forEach var="rownilai_siswa" items="${qrynilai_siswa.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rownilai_siswa[0]}</td>
                    <td valign='top'>${rownilai_siswa[1]}</td>
                    <td valign='top' align="center">${rownilai_siswa[2]}</td>
                    <td valign='top' align="center">${rownilai_siswa[3]}</td>
                    <td valign='top' align="center">${rownilai_siswa[4]}</td>
                    <td valign='top' align="center">${rownilai_siswa[5]}</td>
                    <td valign='top' align="center">${rownilai_siswa[6]}</td>
                    <td valign='top' align="center">${rownilai_siswa[7]}</td>
                    <td valign='top' align="center">${rownilai_siswa[8]}</td>
                    <td valign='top' align="center">${rownilai_siswa[9]}</td>
                </tr>
            </c:forEach>
        </table><br><br>

<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed yellowgreen;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Cetak Data Nilai Siswa</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="cetak_data_nilai_siswa.jsp" method="post">
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

<form action="cetak_data_nilai_siswa_nama_siswa.jsp" method="post">
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

<form action="cetak_data_nilai_siswa_nama_kelas.jsp" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed yellowgreen;">
             <td colspan="2">
                <input type="radio" name="cetak" value=""><b>Kode Kelas</b>
            </td>           
            <tr> 
                <td>Masukan Kode Kelas</td>
                <td><select name="nama kelas" id="nama kelas">
                <option value="">=Pilih Kode=</option>
                <option value="X-1">100001</option>
                <option value="X-2">100002</option>
                <option value="X-3">100003</option>
                <option value="X-4">100004</option>
                <option value="X-5">100005</option>
                <option value="X-6">100006</option>
                <option value="XI IPA 1">110101</option>
                <option value="XI IPA 2">110102</option>
                <option value="XI IPS 1">110201</option>
                <option value="XI IPS 2">110202</option>
                <option value="XI Bahasa Indonesia">110301</option>
                <option value="XI Bahasa Inggris">110302</option>
                <option value="XII IPA 1">120101</option>
                <option value="XII IPA 2">120102</option>
                <option value="XII IPS 1">120201</option>
                <option value="XII IPS 2">120202</option>
                <option value="XII Bahasa Indonesia">120301</option>
                <option value="XII Bahasa Inggris">120302</option>
                </select> 
                </td>
            </tr>
            <tr>      
                <td colspan="2"><center><input type="submit" value="Proses"></center></td>       
            </tr>            
        </table>
    </center>
</form> 