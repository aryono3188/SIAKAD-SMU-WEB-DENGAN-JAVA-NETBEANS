<%-- 
    Document   : proses_update_siswa
    Created on : Jun 21, 2018, 8:46:25 AM
    Author     : Haryono
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>


<%
      
            String nis = request.getParameter("nis");
            String nama_siswa = request.getParameter("nama_siswa");
            String jenis_kelamin_siswa = request.getParameter("jenis_kelamin_siswa");
            String agama = request.getParameter("agama");
            String tempat_lahir = request.getParameter("tempat_lahir");
            String tanggal_lahir = request.getParameter("tanggal_lahir");
            String alamat_siswa = request.getParameter("alamat_siswa");
            String no_telepon_siswa = request.getParameter("no_telepon_siswa");
            String usname_siswa = request.getParameter("usname_siswa");
            String pass_siswa = request.getParameter("pass_siswa");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik",
            "root", "");
      Statement st = con.createStatement();
    //ResultSet rs;
    
    int i = st.executeUpdate
        ("update siswa set nama_siswa='"  + nama_siswa + "',"+ "jenis_kelamin_siswa='" + jenis_kelamin_siswa + "',"
                        + "agama='" + agama + "'," + "tempat_lahir='" + tempat_lahir + "',"+ "tanggal_lahir='" + tanggal_lahir + "'," + "alamat_siswa='" + alamat_siswa + "',"
                        + "no_telepon_siswa='" + no_telepon_siswa + "'," + "usname_siswa='" + usname_siswa + "', pass_siswa='" + pass_siswa + "' "+ "where nis='" + nis + "'");                                         
                out.println("<script>alert('Data Siswa berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexsiswa.jsp?halaman=update_siswa'/>");
      %>


