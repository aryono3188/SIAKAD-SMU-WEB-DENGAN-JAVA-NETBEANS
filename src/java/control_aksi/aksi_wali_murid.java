/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control_aksi;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Haryono
 */
public class aksi_wali_murid extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter(); 
        try {
            /* TODO output your page here. You may use following sample code. */
            String aksi = request.getParameter("aksi");
            String id_wali_murid = request.getParameter("id_wali_murid");
            String nama_wali_murid = request.getParameter("nama_wali_murid");
            String nis = request.getParameter("nis");
            String alamat_walmur = request.getParameter("alamat_walmur");
            String no_telepon_walmur = request.getParameter("no_telepon_walmur");
            String usname_wali_murid = request.getParameter("usname_wali_murid");
            String pass_wali_murid = request.getParameter("pass_wali_murid");
     /*       String cari = request.getParameter("cari");*/
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik","root","");
            switch (aksi) 
            {
                case "SIMPAN":
                    if(id_wali_murid.equals("")||nama_wali_murid.equals("")||nis.equals("")||alamat_walmur.equals("")
                        ||no_telepon_walmur.equals("")||usname_wali_murid.equals("")||pass_wali_murid.equals(""))   
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_wali_murid'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into wali_murid "
                        + "values('" + id_wali_murid + "','" + nama_wali_murid + "','"  
                                     + nis + "','" + alamat_walmur + "','" + no_telepon_walmur + "','" 
                                     + usname_wali_murid + "','" + pass_wali_murid + "')");
                        out.println("<script>alert('Data Wali Murid berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_wali_murid'/>");
                    }
                break;
                
                case "HAPUS":
                koneksi.createStatement().execute("delete from wali_murid where id_wali_murid='" + id_wali_murid + "'");
                out.println("<script>alert('Data Wali Murid berhasil Dihapus...!!!')</script>"
                            + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_wali_murid'/>");
                break;
                
                case "GANTI":
                koneksi.createStatement().execute("update wali_murid set nama_wali_murid='"  + nama_wali_murid + "',"
                        + "nis='" + nis + "'," + "alamat_walmur='" + alamat_walmur + "'," + "no_telepon_walmur='" + no_telepon_walmur + "',"
                        + "usname_wali_murid='" + usname_wali_murid + "',pass_wali_murid='" + pass_wali_murid + "' "+ "where id_wali_murid='" + id_wali_murid + "'");                                      
                out.println("<script>alert('Data Wali Murid berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_wali_murid'/>");
                break;
                
                default:
                break;
            }
        } catch (Exception e) {
            out.println("<script>alert('Gagal... Kemungkinan Id Wali Murid sudah ada, Silahkan Ulangi!!!')</script>"
                      + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=wali_murid&aksi=SIMPAN'/>");

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

