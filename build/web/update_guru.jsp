<%-- 
    Document   : update_guru
    Created on : Jun 17, 2018, 9:26:36 PM
    Author     : Haryono
--%>

<br>
<center>
    <table bgcolor="gray" border="0" width="50%" cellpadding="0" cellspacing="0"style="border: 5px dashed royalblue;">
        <tr class="head">
        <thead>
            <td>  
                <h2><center>Update Data Pribadi</center></h2>
             </td>
        </thead>
        </tr>
    </table>
</center>


    <form action="proses_update_guru.jsp" method="post" > 
    <center>
        <table border="1" width="50%" cellpadding="0" cellspacing="0" style="border: 5px dashed royalblue;">
            <input type="hidden" name="aksi" value="${param.aksi}"/>
            <tr> 
                <td>NIP</td>
                <td><input type="text" name="nip_guru" value="${param.nip_guru}"/></td>
            </tr>
            <tr> 
                <td>Nama Guru</td>
                <td><input type="text" name="nama_guru" value="${param.nama_guru}"/></td>
            </tr>
             <td>Jenis Kelamin</td>
                <td><select name="jenis_kelamin_guru">
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
            <tr>
                <td>User Name</td>
                <td><input type="text" name="usname_guru" value="${param.usname_guru}"/></td> 
            </tr> 
            <tr>
                <td>Password</td>
                <td><input type="text" name="pass_guru" value="${param.pass_guru}"/></td> 
            </tr>          
                <td>Wali Kelas</td>
                <td><input type="text" name="wali_kelas" value="${param.wali_kelas}"/></td> 
            <tr> 
                <td>Alamat</td>
                <td><input type="text" name="alamat_guru" value="${param.alamat_guru}"/></td> 
            </tr>   
            <tr> 
                <td>Nomor Telepon</td>
                <td><input type="text" name="no_telepon_guru" value="${param.no_telepon_guru}"/></td> 
            </tr> 
            <td colspan="2"><center><input type="submit" value="Simpan" class="button"</center></td>
            <td></td>
            </tr>
        </table>
    </center>
</form>    