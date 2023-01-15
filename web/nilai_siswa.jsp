<%-- 
    Document   : nilai_siswa
    Created on : May 30, 2018, 12:05:18 AM
    Author     : Haryono
--%>

<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Input Nilai Siswa</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="aksi_nilai_siswa" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">Nomor</td>
                <td><input type="text" name="id_nilai_siswa" value="${param.id_nilai_siswa}"/></td>
            </tr>
            <tr> 
                <td>NIS</td>
                <td><select name="nis">
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
                <td>Kode Kelas</td>
                <td><select name="kode_kelas" value="${param.kode_kelas}">
                <option value="">Pilih Kode</option>
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
                <td>Kode Pelajaran</td>
                <td><select name="kode_pelajaran" value="${param.kode_pelajaran}">
                <option value="">Pilih Kode</option>
                <option value="Pendidikan Agama">1</option>
                <option value="PKN">2</option>
                <option value="Matematika">3</option>
                <option value="PJOK">4</option>
                <option value="Biologi">5</option>
                <option value="Fisika">6</option>
                <option value="Kimia">7</option>
                <option value="Geografi">8</option>
                <option value="Sosiologi dan Anthropologi">9</option>
                <option value="Ekonomi">10</option>
                <option value="Bahasa Indonesia">11</option>
                <option value="Bahasa Inggris">12</option>
                <option value="Bhs & Sastra Indonesia">13</option>
                <option value="Bhs & Sastra Inggris">14</option>
                </select> 
                </td>
            </tr>  
             <tr>
                <td>Semester</td>
                <td><select name="semester">
                        <option value="">Pilih Semester</option>
                        <option value="Genap">Genap</option>
                        <option value="Ganjil">Ganjil</option>
                    </select> 
                </td>
            </tr> 
                <td>Tahun Ajaran</td>
                <td><input type="text" name="tahun_ajaran" value="${param.tahun_ajaran}"/></td> 
            <tr> 
                <td>Tugas</td>
                <td><input type="text" name="tugas" value="${param.tugas}"/></td> 
            </tr> 
             <tr> 
                <td>UTS</td>
                <td><input type="text" name="uts" value="${param.uts}"/></td> 
            </tr> 
             <tr> 
                <td>UAS</td>
                <td><input type="text" name="uas" value="${param.uas}"/></td> 
            </tr> 
             <tr> 
                <td>Nilai Raport</td>
                <td><input type="text" name="nilai_raport" value="${param.nilai_raport}"/></td> 
            </tr> 
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    

       <%--      insert into nilai_siswa set nilai_raport=((tugas*0.2) + (uts *0.3)+ (uas*0.5));--%>
            
            
            