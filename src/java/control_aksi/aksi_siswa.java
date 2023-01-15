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
public class aksi_siswa extends HttpServlet {

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
         /*   String cari = request.getParameter("cari");*/
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik","root","");
            switch (aksi) 
            {
                case "SIMPAN":
                    if(nis.equals("")||nama_siswa.equals("")||jenis_kelamin_siswa.equals("")||agama.equals("")||tempat_lahir.equals("")
                       ||tanggal_lahir.equals("")||alamat_siswa.equals("")||no_telepon_siswa.equals("")||usname_siswa.equals("")||pass_siswa.equals(""))          
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_siswa'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into siswa "
                        + "values('" + nis + "','" + nama_siswa + "','" + jenis_kelamin_siswa + "','" + agama + "','"  
                        + tempat_lahir + "','" + tanggal_lahir + "','" + alamat_siswa + "','" + no_telepon_siswa + "','" + usname_siswa + "','" + pass_siswa + "')");             
                        out.println("<script>alert('Data Siswa berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_siswa'/>");
                    }
                break;
                
                case "HAPUS":
                koneksi.createStatement().execute("delete from siswa where nis='" + nis + "'");
                out.println("<script>alert('Data Siswa berhasil Dihapus...!!!')</script>"
                            + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_siswa'/>");
                break;
                
                case "GANTI":
                koneksi.createStatement().execute("update siswa set nama_siswa='"  + nama_siswa + "',"+ "jenis_kelamin_siswa='" + jenis_kelamin_siswa + "',"
                        + "agama='" + agama + "'," + "tempat_lahir='" + tempat_lahir + "',"+ "tanggal_lahir='" + tanggal_lahir + "'," + "alamat_siswa='" + alamat_siswa + "',"
                        + "no_telepon_siswa='" + no_telepon_siswa + "'," + "usname_siswa='" + usname_siswa + "', pass_siswa='" + pass_siswa + "' "+ "where nis='" + nis + "'");                                         
                out.println("<script>alert('Data Siswa berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_siswa'/>");
                break;
                
                default:
                break;
            }
        } catch (Exception e) {
            out.println("<script>alert('Gagal... Kemungkinan NIS sudah ada, Silahkan Ulangi!!!')</script>"
                      + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=siswa&aksi=SIMPAN'/>");

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

