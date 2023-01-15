<%-- 
    Document   : proses_update_wali_murid
    Created on : Jun 20, 2018, 8:52:52 PM
    Author     : Haryono
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
            String id_wali_murid = request.getParameter("id_wali_murid");
            String nama_wali_murid = request.getParameter("nama_wali_murid");
            String nis = request.getParameter("nis");
            String alamat_walmur = request.getParameter("alamat_walmur");
            String no_telepon_walmur = request.getParameter("no_telepon_walmur");
            String usname_wali_murid = request.getParameter("usname_wali_murid");
            String pass_wali_murid = request.getParameter("pass_wali_murid");
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik","root","");
   Statement st = koneksi.createStatement();
    //ResultSet rs;
    
    int i = st.executeUpdate
        ("update wali_murid set nama_wali_murid='"  + nama_wali_murid + "',"
                        + "nis='" + nis + "'," + "alamat_walmur='" + alamat_walmur + "'," + "no_telepon_walmur='" + no_telepon_walmur + "',"
                        + "usname_wali_murid='" + usname_wali_murid + "',pass_wali_murid='" + pass_wali_murid + "' "+ "where id_wali_murid='" + id_wali_murid + "'");                                      
                out.println("<script>alert('Data Wali Murid berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexwali_murid.jsp?halaman=update_wali_murid'/>");
%>