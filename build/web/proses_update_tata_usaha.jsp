<%-- 
    Document   : proses_update_tata_usaha
    Created on : Jun 20, 2018, 11:36:44 AM
    Author     : Haryono
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
            String nip_t_u = request.getParameter("nip_t_u");
            String nama_t_u = request.getParameter("nama_t_u");
            String alamat_t_u = request.getParameter("alamat_t_u");
            String usname_t_u = request.getParameter("usname_t_u");
            String pass_t_u = request.getParameter("pass_t_u");
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik","root","");
   Statement st = koneksi.createStatement();
    //ResultSet rs;
    
    int i = st.executeUpdate
        ("update tata_usaha set nama_t_u='" + nama_t_u + "'," + "alamat_t_u='" + alamat_t_u + "',"
                        + "usname_t_u='" + usname_t_u + "',pass_t_u='" + pass_t_u + "' "+ "where nip_t_u='" + nip_t_u + "'"); 
        out.println("<script>alert('Data Tata Usaha berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indextata_usaha.jsp?halaman=update_tata_usaha'/>");          
%>