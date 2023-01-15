<%-- 
    Document   : jadwal_pelajaran
    Created on : May 13, 2018, 7:25:17 PM
    Author     : Haryono
--%>

<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Input Data Jadwal Pelajaran</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="aksi_jadwal_pelajaran" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">Nomor</td>
                <td><input type="text" name="id_jadwal_pelajaran" value="${param.id_jadwal_pelajaran}"/></td>
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
                <td>NIP Guru</td>
                <td><select name="nip_guru">
                <option value="">Pilih NIP</option>
                <option value="Alfat Azre Rahim, Spd">198601052017041001</option>
                <option value="Melatul Azrina, Spd">198602072017042002</option>
                <option value="Najwa Ari Wibowo, Spd">198403072017011003</option>
                <option value="Haryadi, Spd">198503072017011003</option>
                <option value="Daryanti, Spd">198706072016082005</option>
                <option value="Fery Irawan, Spd">198304022015051006</option>
                <option value="Suyatno, Spd">198002022017051007</option>
                <option value="Haryanto, Spd">198109092017081008</option>
                <option value="M Rizky, Spd">198107072017071009</option>
                <option value="Sulastri, Spd">198404072017032010</option>
                <option value="Nabilla Azrina, Spd">198206082016042011</option>
                <option value="Hadi Purnomo, Spd">198008072017081012</option>
                <option value="M. Bhakti, Spd">198201092014081013</option>
                <option value="Wahyuningsih Putri, Spd">198307152015022014</option>
                </select> 
                </td>       
            </tr>     
            <tr> 
                <td>Hari</td>
                <td><select name="hari">
                <option value="">Pilih Hari</option>
                <option value="Senin">Senin</option>
                <option value="Selasa">Selasa</option>
                <option value="Rabu">Rabu</option>
                <option value="Kamis">Kamis</option>
                <option value="Jumat">Jumat</option>
                <option value="Sabtu">Sabtu</option>
                </select> 
                </td>
            </tr> 
            <tr>     
                <td>Jam Pelajaran</td>
                <td><input type="text" name="jam_pelajaran" value="${param.jam_pelajaran}"/></td> 
            </tr>
            <tr>
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    
            
            