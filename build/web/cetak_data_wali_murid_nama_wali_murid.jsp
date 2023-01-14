<%-- 
    Document   : cetak_data_wali_murid_nama_wali_murid
    Created on : Jun 20, 2018, 9:37:22 PM
    Author     : Haryono
--%>

<%@page import="java.io.*, java.util.*, java.sql.*"%>
<%@page import="net.sf.jasperreports.engine.*"%>
<%@page import="net.sf.jasperreports.view.JasperViewer.*" %>
<%@page import="javax.servlet.ServletResponse" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Cetak Data Wali Murid Parameter Wali Murid</title>
</head>
<body>
    
<%
Connection conn = null;//--koneksi ke MySQL database: sia1 (sesuaikan dengan databasemasing-masing)
String url="jdbc:mysql://localhost:3306/ta_sis_akademik";
String username="root";
String password="";

String nama_wali_murid=request.getParameter("nama wali murid");

Class.forName("com.mysql.jdbc.Driver");
conn = DriverManager.getConnection(url, username, password);
File reportFile = new File(application
        .getRealPath("/Report"+ "/data_wali_murid_nama_wali_murid.jasper"));

Map parameter = new HashMap();
parameter.put("nama wali murid", nama_wali_murid);
byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameter, conn);
response.setContentType("application/pdf");
response.setContentLength(bytes.length);

ServletOutputStream outStream = response.getOutputStream();
outStream.write(bytes, 0, bytes.length);
outStream.flush();
outStream.close();
%>
</body>
</html>

