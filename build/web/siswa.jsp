<%-- 
    Document   : siswa
    Created on : Apr 13, 2018, 7:00:43 PM
    Author     : Haryono
--%>

<br>
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Input Data Siswa</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>

<form action="aksi_siswa" method="post">
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td width="60%">NIS</td>
                <td><input type="text" name="nis" value="${param.nis}"/></td>
            </tr>
            <tr> 
                <td>Nama Siswa</td>
                <td><input type="text" name="nama_siswa" value="${param.nama_siswa}"/></td>
            </tr>
            <tr> 
                <td>Jenis Kelamin</td>
                <td><select name="jenis_kelamin_siswa">
                        <c:choose>
                            <c:when test="${param.status=='L'}">
                                <option value="L"> L </option>
                                <option value="P"> P </option>
                            </c:when>
                            <c:when test="${param.status=='P'}">
                                <option value="P"> P</option>
                                <option value="L"> L</option>
                            </c:when> 
                            <c:otherwise>
                                <option value="L"> L </option>
                                <option value="P"> P </option>
                            </c:otherwise>
                        </c:choose>
                    </select>  
                </td>
            </tr> 
            <tr> 
                <td>Agama</td>
                <td><input type="text" name="agama" value="${param.agama}"/></td>
            </tr>
            <tr> 
                <td>Tempat Lahir</td>
                <td><input type="text" name="tempat_lahir" value="${param.tempat_lahir}"/></td>
            </tr>
            <tr>
                <td>Tanggal Lahir</td>
                <td><input type="date" name="tanggal_lahir" value="${param.tanggal_lahir}"/></td> 
            </tr>
                <td>Alamat</td>
                <td><input type="text" name="alamat_siswa" value="${param.alamat_siswa}"/></td> 
            </tr>     
             </tr>
                <td>Nomor Telepon</td>
                <td><input type="text" name="no_telepon_siswa" value="${param.no_telepon_siswa}"/></td> 
            </tr>
             </tr>
                <td>User Name</td>
                <td><input type="text" name="usname_siswa" value="${param.usname_siswa}"/></td> 
            </tr>
             </tr>
                <td>Password</td>
                <td><input type="text" name="pass_siswa" value="${param.pass_siswa}"/></td> 
            </tr>
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    
