<%-- 
    Document   : data_wali_murid
    Created on : Jun 14, 2018, 2:10:28 PM
    Author     : Haryono
--%>

<sql:query var="qrywali_murid" dataSource="${dataSource}">
    SELECT*FROM wali_murid 
    WHERE id_wali_murid like'%${param.cari}%'
    OR nama_wali_murid like'%${param.cari}%'
</sql:query>

<sql:query var="qrysiswa" dataSource="${dataSource}">
    SELECT*FROM siswa 
    WHERE nis like'%${param.nama_siswa}%'
</sql:query>

<%
 String cari = request.getParameter("cari");
%>

<br><fornt color="white">  <h2> <center> Data Wali Murid </center> </h2> </fornt>
    <br>
    <table bgcolor="gray" border="0" width="20%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                    <a href="cetak_data_wali_murid.jsp"> Cetak Wali Murid </a> 
                </td>
            </thead>
        </tr> 
    </table><br>
    
    <form action="" method="post"> <br>
        Cari Data Wali Murid : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/> <br>       
    </form><br>
        
    <h3>  Data Pribadi   <% out.println(cari);%>   </h3> <br/>
    
        <table border="0" width="100%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Nomor</td>
                <td>Nama Wali Murid</td>
                <td>Nama Siswa</td>
                <td>Alamat</td>
                <td>Nomor Telepon</td>
                <td>User Name</td>
                <td>Password</td>
            </tr>
            <c:forEach var="rowwali_murid" items="${qrywali_murid.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowwali_murid[0]}</td>
                    <td valign='top'>${rowwali_murid[1]}</td>
                    <td valign='top'>${rowwali_murid[2]}</td>
                    <td valign='top'>${rowwali_murid[3]}</td>   
                    <td valign='top'>${rowwali_murid[4]}</td> 
                    <td valign='top'>${rowwali_murid[5]}</td> 
                    <td valign='top'>${rowwali_murid[6]}</td> 
                </tr>
            </c:forEach>
        </table>

