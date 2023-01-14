<%-- 
    Document   : proses_update_guru
    Created on : Nov 1, 2017, 8:29:57 PM
    Author     : Haryono
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>


<%
      
      String nip_guru = request.getParameter("nip_guru");
      String nama_guru = request.getParameter("nama_guru");
      String jenis_kelamin_guru = request.getParameter("jenis_kelamin_guru");
      String usname_guru = request.getParameter("usname_guru");
      String pass_guru = request.getParameter("pass_guru");
      String wali_kelas = request.getParameter("wali_kelas");
      String alamat_guru = request.getParameter("alamat_guru");
      String no_telepon_guru = request.getParameter("no_telepon_guru");
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik",
            "root", "");
       Statement st = con.createStatement();
    //ResultSet rs;
    
    int i = st.executeUpdate            
        ("update guru set nama_guru='" + nama_guru + "'," + "jenis_kelamin_guru='" + jenis_kelamin_guru + "',"
                        + "usname_guru='" + usname_guru + "'," + "pass_guru='" + pass_guru + "'," + "wali_kelas='" + wali_kelas + "',"
                        + " alamat_guru='" + alamat_guru + "',no_telepon_guru='" + no_telepon_guru + "' "+ "where nip_guru='" + nip_guru + "'");               
                out.println("<script>alert('Data Guru berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexguru.jsp?halaman=update_guru'/>");
     
      %>
