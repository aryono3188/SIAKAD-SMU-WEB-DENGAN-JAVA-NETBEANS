<%-- 
    Document   : cetak_data_admin
    Created on : Jun 13, 2018, 4:27:01 PM
    Author     : Haryono
--%>

<%@page import="java.io.*, java.util.*, java.sql.*"%> 
<%@page import="net.sf.jasperreports.engine.*"%> 
<%@page import="net.sf.jasperreports.view.JasperViewer.*"%> 
<%@page import="javax.servlet.ServletResponse"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Data Admin</title> 
    </head>
    <body> 
        <% 
            Connection conn = null; //--koneksi ke MySQL database: laporan 
            String url="jdbc:mysql://localhost:3306/ta_sis_akademik"; 
            String username="root"; 
            String password="";
            
            Class.forName("com.mysql.jdbc.Driver"); 
            conn = DriverManager.getConnection(url, username, password);
           
            File reportFile = new 
            File(application.getRealPath("/Report"+ "/data_admin.jasper")); 
            Map<String, Object> param=new HashMap<String, Object>(); 
            byte[] bytes = 
                    JasperRunManager.runReportToPdf(reportFile.getPath(), param, conn); 
            
            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream(); 
            outStream.write(bytes, 0, bytes.length); 
            outStream.flush();
            outStream.close(); 
        %> 
    </body> 
</html>
