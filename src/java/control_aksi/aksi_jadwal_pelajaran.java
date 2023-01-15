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
public class aksi_jadwal_pelajaran extends HttpServlet {

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
            String id_jadwal_pelajaran = request.getParameter("id_jadwal_pelajaran");
            String kode_kelas = request.getParameter("kode_kelas");
            String kode_pelajaran = request.getParameter("kode_pelajaran");
            String nip_guru = request.getParameter("nip_guru");
            String hari = request.getParameter("hari");
            String jam_pelajaran = request.getParameter("jam_pelajaran");
        /*    String cari = request.getParameter("cari");*/
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik","root","");
            switch (aksi) 
            {
                case "SIMPAN":
                    if(id_jadwal_pelajaran.equals("")||kode_kelas.equals("")||kode_pelajaran.equals("")||nip_guru.equals("")
                            ||hari.equals("") ||jam_pelajaran.equals("")) 
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_jadwal_pelajaran'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into jadwal_pelajaran "
                            + "values('" + id_jadwal_pelajaran + "','" + kode_kelas + "','" + kode_pelajaran + "','" + nip_guru + "','" 
                            + hari + "','"  + jam_pelajaran + "')");                              
                        out.println("<script>alert('Data Jadwal Pelajaran berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_jadwal_pelajaran'/>");
                    }
                break;
                
                case "HAPUS":
                koneksi.createStatement().execute("delete from jadwal_pelajaran where id_jadwal_pelajaran='" + id_jadwal_pelajaran + "'");
                out.println("<script>alert('Data Jadwal Pelajaran berhasil Dihapus...!!!')</script>"
                            + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_jadwal_pelajaran'/>");
                break;
                
                 case "GANTI":
                koneksi.createStatement().execute("update jadwal_pelajaran set kode_kelas='"  + kode_kelas + "',"+ "kode_pelajaran='" 
                        + kode_pelajaran + "'," + "nip_guru='" + nip_guru + "'," + "hari='" + hari + "',jam_pelajaran='" + jam_pelajaran + "' "
                        + "where id_jadwal_pelajaran='" + id_jadwal_pelajaran + "'");               
                out.println("<script>alert('Data Jadwal Pelajaran berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_jadwal_pelajaran''/>");
                break;
                
                default:
                break;
            }
        } catch (Exception e) {
            out.println("<script>alert('Gagal... Kemungkinan Id Jadwal Pelajaran sudah ada, Silahkan Ulangi!!!')</script>"
                      + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=jadwal_pelajaran&aksi=SIMPAN'/>");

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

