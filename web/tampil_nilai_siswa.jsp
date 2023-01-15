<%-- 
    Document   : tampil_nilai_siswa
    Created on : May 30, 2018, 10:37:38 PM
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

<br><fornt color="white"> <h2> <center> Nilai Siswa </center> </h2> </fornt>
    <br>
    <a href="indexadmin.jsp?halaman=nilai_siswa&aksi=SIMPAN"> Tambah Nilai Siswa </a>
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
                <td>Nilai Raport</td>
                <td>Action</td>
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
                    <td align='center'>
                        <a href='aksi_nilai_siswa?aksi=HAPUS&id_nilai_siswa=${rownilai_siswa[0]}'>Hapus</a> |
                        <a href='indexadmin.jsp?halaman=nilai_siswa&aksi=GANTI&id_nilai_siswa=${rownilai_siswa[0]}
                           &nis=${rownilai_siswa[1]}&kode_kelas=${rownilai_siswa[2]}
                           &kode_pelajaran=${rownilai_siswa[3]}&semester=${rownilai_siswa[4]}
                           &tahun_ajaran=${rownilai_siswa[5]}&tugas=${rownilai_siswa[6]}
                           &uts=${rownilai_siswa[7]}&uas=${rownilai_siswa[8]}
                           &nilai_raport=${rownilai_siswa[9]}'> Edit </a>                             
                    </td>
                </tr>
            </c:forEach>
        </table>
