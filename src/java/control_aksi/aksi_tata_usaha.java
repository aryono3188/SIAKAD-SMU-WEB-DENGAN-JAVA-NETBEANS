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
public class aksi_tata_usaha extends HttpServlet {

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
            String nip_t_u = request.getParameter("nip_t_u");
            String nama_t_u = request.getParameter("nama_t_u");
            String alamat_t_u = request.getParameter("alamat_t_u");
            String usname_t_u = request.getParameter("usname_t_u");
            String pass_t_u = request.getParameter("pass_t_u");
           /*  String cari = request.getParameter("cari");*/
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik","root","");
            switch (aksi) 
            {
                case "SIMPAN":
                    if(nip_t_u.equals("")||nama_t_u.equals("")||alamat_t_u.equals("")||usname_t_u.equals("")||pass_t_u.equals(""))          
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_tata_usaha'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into tata_usaha "
                        + "values('" + nip_t_u + "','" + nama_t_u + "','" + alamat_t_u + "','" + usname_t_u + "','"  
                        + pass_t_u + "')");             
                        out.println("<script>alert('Data Tata Usaha berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_tata_usaha'/>");
                    }
                break;
                
                case "HAPUS":
                koneksi.createStatement().execute("delete from tata_usaha where nip_t_u='" + nip_t_u + "'");
                out.println("<script>alert('Data Tata Usaha berhasil Dihapus...!!!')</script>"
                            + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_tata_usaha'/>");
                break;
                
                case "GANTI":
                koneksi.createStatement().execute("update tata_usaha set nama_t_u='"  + nama_t_u + "'," + "alamat_t_u='" + alamat_t_u + "',"
                        + "usname_t_u='" + usname_t_u + "',pass_t_u='" + pass_t_u + "' "+ "where nip_t_u='" + nip_t_u + "'");                                      
                out.println("<script>alert('Data Tata Usaha berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_tata_usaha'/>");
                break;
                
                default:
                break;
            }
        } catch (Exception e) {
            out.println("<script>alert('Gagal... Kemungkinan NIP sudah ada, Silahkan Ulangi!!!')</script>"
                      + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tata_usaha&aksi=SIMPAN'/>");

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

