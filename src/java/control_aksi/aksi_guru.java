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
public class aksi_guru extends HttpServlet {

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
            String nip_guru = request.getParameter("nip_guru");
            String nama_guru = request.getParameter("nama_guru");
            String jenis_kelamin_guru = request.getParameter("jenis_kelamin_guru");
            String usname_guru = request.getParameter("usname_guru");
            String pass_guru = request.getParameter("pass_guru");
            String wali_kelas = request.getParameter("wali_kelas");
            String alamat_guru = request.getParameter("alamat_guru");
            String no_telepon_guru = request.getParameter("no_telepon_guru");
    /*        String cari = request.getParameter("cari");*/
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik","root","");
            switch (aksi) 
            {
                case "SIMPAN":
                    if(nip_guru.equals("")||nama_guru.equals("")||jenis_kelamin_guru.equals("")||usname_guru.equals("")
                        ||pass_guru.equals("")||wali_kelas.equals("")||alamat_guru.equals("")||no_telepon_guru.equals(""))   
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_guru'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into guru "
                        + "values('" + nip_guru + "','" + nama_guru + "','" + jenis_kelamin_guru + "','"  
                                     + usname_guru + "','" + pass_guru + "','" + wali_kelas + "','" 
                                     + alamat_guru + "','" + no_telepon_guru + "')");
                        out.println("<script>alert('Data Guru berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_guru'/>");
                    }
                break;
                
                case "HAPUS":
                koneksi.createStatement().execute("delete from guru where nip_guru= '" + nip_guru + "'");
                out.println("<script>alert('Data Guru berhasil Dihapus...!!!')</script>"
                            + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_guru'/>");
                break;
                
                case "GANTI":
                koneksi.createStatement().execute("update guru set nama_guru='" + nama_guru + "'," + "jenis_kelamin_guru='" + jenis_kelamin_guru + "',"
                        + "usname_guru='" + usname_guru + "'," + "pass_guru='" + pass_guru + "'," + "wali_kelas='" + wali_kelas + "',"
                        + " alamat_guru='" + alamat_guru + "',no_telepon_guru='" + no_telepon_guru + "' "+ "where nip_guru='" + nip_guru + "'");               
                out.println("<script>alert('Data Guru berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_guru'/>");
                break;
                
                default:
                break;
            }
        } catch (Exception e) {
            out.println("<script>alert('Gagal... Kemungkinan Nip Guru sudah ada, Silahkan Ulangi!!!')</script>"
                      + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=guru&aksi=SIMPAN'/>");

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

