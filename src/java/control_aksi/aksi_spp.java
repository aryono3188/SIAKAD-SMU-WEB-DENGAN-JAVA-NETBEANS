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
public class aksi_spp extends HttpServlet {

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
            String id_spp = request.getParameter("id_spp");
            String nis = request.getParameter("nis");
            String bulan = request.getParameter("bulan");
            String tanggal_bayar = request.getParameter("tanggal_bayar");
            String jumlah = request.getParameter("jumlah");
            String nip_t_u = request.getParameter("nip_t_u");
          /*   String cari = request.getParameter("cari");*/
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik","root","");
            switch (aksi) 
            {
                case "SIMPAN":
                    if(id_spp.equals("")||nis.equals("")||bulan.equals("")||tanggal_bayar.equals("")
                        ||jumlah.equals("")||nip_t_u.equals(""))   
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_spp'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into spp "
                        + "values('" + id_spp + "','" + nis + "','" + bulan + "','" + tanggal_bayar + "','"  
                                     + jumlah + "','" + nip_t_u + "')");
                        out.println("<script>alert('Data SPP berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_spp'/>");
                    }
                break;
                
                case "SIMPAN2":
                    if(id_spp.equals("")||nis.equals("")||bulan.equals("")||tanggal_bayar.equals("")
                        ||jumlah.equals("")||nip_t_u.equals(""))   
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;indextata_usaha.jsp?halaman=input_spp_siswa'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into spp "
                        + "values('" + id_spp + "','" + nis + "','" + bulan + "','" + tanggal_bayar + "','"  
                                     + jumlah + "','" + nip_t_u + "')");
                        out.println("<script>alert('Data SPP berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indextata_usaha.jsp?halaman=input_spp_siswa'/>");
                    }
                break;
                
                case "HAPUS":
                koneksi.createStatement().execute("delete from spp where id_spp='" + id_spp + "'");
                out.println("<script>alert('Data SPP berhasil Dihapus...!!!')</script>"
                            + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_spp'/>");
                break;
                
                case "GANTI":
                koneksi.createStatement().execute("update spp set nis='"  + nis + "',"+ "bulan='" + bulan + "'," 
                        + "tanggal_bayar='" + tanggal_bayar + "'," + "jumlah='" + jumlah + "',nip_t_u='" + nip_t_u + "' "
                        + "where id_spp='" + id_spp + "'");               
                out.println("<script>alert('Data SPP Siswa berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_spp'/>");
                break;
                
                case "GANTI2":
                koneksi.createStatement().execute("update spp set nis='"  + nis + "',"+ "bulan='" + bulan + "'," 
                        + "tanggal_bayar='" + tanggal_bayar + "'," + "jumlah='" + jumlah + "',nip_t_u='" + nip_t_u + "' "
                        + "where id_spp='" + id_spp + "'");               
                out.println("<script>alert('Data SPP Siswa berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indextata_usaha.jsp?halaman=input_spp_siswa'/>");
                break;
                
                default:
                break;
            }
        } catch (Exception e) {
            out.println("<script>alert('Gagal... Kemungkinan Id SPP sudah ada, Silahkan Ulangi!!!')</script>"
                      + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=spp&aksi=SIMPAN'/>");

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

