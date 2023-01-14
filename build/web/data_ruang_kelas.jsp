<%-- 
    Document   : data_ruang_kelas
    Created on : Jun 14, 2018, 10:32:04 PM
    Author     : Haryono
--%>

<sql:query var="qryruang_kelas" dataSource="${dataSource}">
    SELECT*FROM ruang_kelas 
    WHERE kode_kelas like'%${param.cari}%'
    OR nama_kelas like'%${param.cari}%'
</sql:query>

<%
 String cari = request.getParameter("cari");
%>

<br><fornt color="white">  <h2> <center> Data Kelas </center> </h2> </fornt>
    <br>
    <table bgcolor="gray" border="0" width="20%" cellpadding="0" cellspacing="2">                       
         <tr class="head">
            <thead>
                <td bgcolor="pink">
                     <a href="cetak_data_ruang_kelas.jsp"> Cetak Ruang Kelas </a> 
                </td>
            </thead>
        </tr> 
    </table><br>

    <form action="" method="post"> <br>
        Cari Data Kelas : <input type="text" name="cari" value="${param.cari}"/>
        <input type="submit" value="Cari" class="button"/> <br>       
    </form><br>
        
    <h3> Data Kelas <% out.println(cari);%>  </h3> <br/>
    
        <table border="0" width="90%" cellpadding="0" cellspacing="0">
            <tr class="head">
                <td>Kode Kelas</td>
                <td>Nama Kelas</td>
                <td>Jumlah Murid</td>
            </tr>
            <c:forEach var="rowruang_kelas" items="${qryruang_kelas.rowsByIndex}">
                <tr class="isi">
                    <td valign='top'>${rowruang_kelas[0]}</td>
                    <td valign='top'>${rowruang_kelas[1]}</td>
                    <td valign='top' align="center">${rowruang_kelas[2]}</td>    
                </tr>
            </c:forEach>
        </table>

