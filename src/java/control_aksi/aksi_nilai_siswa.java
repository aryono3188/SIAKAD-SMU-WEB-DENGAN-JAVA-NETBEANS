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
public class aksi_nilai_siswa extends HttpServlet {

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
            String id_nilai_siswa = request.getParameter("id_nilai_siswa");
            String nis = request.getParameter("nis");
            String kode_kelas = request.getParameter("kode_kelas");
            String kode_pelajaran = request.getParameter("kode_pelajaran");
            String semester = request.getParameter("semester");
            String tahun_ajaran = request.getParameter("tahun_ajaran");
            String tugas = request.getParameter("tugas");
            String uts = request.getParameter("uts");
            String uas = request.getParameter("uas");
            String nilai_raport = request.getParameter("nilai_raport");
            String cari = request.getParameter("cari");
            Class.forName("com.mysql.jdbc.Driver");
            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost:3306/ta_sis_akademik","root","");
            switch (aksi) 
             {
                case "SIMPAN":
                    if(id_nilai_siswa.equals("")||nis.equals("")||kode_kelas.equals("")||kode_pelajaran.equals("")||semester.equals("")
                       ||tahun_ajaran.equals("")||tugas.equals("")||uts.equals("")|| uas.equals("")||nilai_raport.equals(""))          
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_nilai_siswa'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into nilai_siswa "
                        + "values('" + id_nilai_siswa + "','" + nis + "','" + kode_kelas + "','" + kode_pelajaran + "','"  
                        + semester + "','" + tahun_ajaran + "','" + tugas + "','" + uts + "','" + uas + "','" + nilai_raport + "')");             
                        out.println("<script>alert('Data Nilai Siswa berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_nilai_siswa'/>");
                    }
                break;
                
                case "SIMPAN2":
                    if(id_nilai_siswa.equals("")||nis.equals("")||kode_kelas.equals("")||kode_pelajaran.equals("")||semester.equals("")
                       ||tahun_ajaran.equals("")||tugas.equals("")||uts.equals("")||uas.equals("")||nilai_raport.equals("")) 
                        
                    {
                        out.println("<script>alert('Gagal... masih ada data yang belum terisi, Silahkan Ulangi!!!')" +
                            "</script><meta http-equiv='refresh' content='1;indexguru.jsp?halaman=input_nilai_siswa'/>");
                    } 
                    else 
                    {
                        koneksi.createStatement().execute("insert into nilai_siswa "
                            + "values('" + id_nilai_siswa + "','" + nis + "','" + kode_kelas + "','" + kode_pelajaran + "','" 
                            + semester + "','"  + tahun_ajaran + "','" + tugas + "','" + uts + "','" + uas + "','" + nilai_raport + "')");
                                        
                                         
                        out.println("<script>alert('Data Nilai Siswa berhasil Disimpan...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexguru.jsp?halaman=input_nilai_siswa'/>");
                    }
                break;
                
                case "HAPUS":
                koneksi.createStatement().execute("delete from nilai_siswa where id_nilai_siswa='" +id_nilai_siswa + "'");
                out.println("<script>alert('Data Nilai Siswa berhasil Dihapus...!!!')</script>"
                            + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_nilai_siswa'/>");
                break;
                
                case "GANTI":
                koneksi.createStatement().execute("update nilai_siswa set nis='"  + nis+ "',"+ "kode_kelas='" + kode_kelas+ "',"
                        + "kode_pelajaran='" + kode_pelajaran + "'," + "semester='" + semester + "',"+ "tahun_ajaran='" + tahun_ajaran + "'," + "tugas='" + tugas + "',"
                        + "uts='" + uts + "'," + "uas='" + uas + "', nilai_raport='" + nilai_raport + "' "+ "where id_nilai_siswa='" + id_nilai_siswa + "'");                                         
                out.println("<script>alert('Data Nilai Siswa berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=tampil_nilai_siswa'/>");
                break;
                
                case "GANTI2":
                koneksi.createStatement().execute("update nilai_siswa set nis='"  + nis + "',"+ "kode_kelas='" 
                        + kode_kelas + "'," + "kode_pelajaran='" + kode_pelajaran + "'," + "semester='" + semester + "'," + "tahun_ajaran='" + tahun_ajaran + "'," 
                        + "tugas='" + tugas + "'," + "uts='" + uts + "'," + "uas='" + uas + "',nilai_raport='" + nilai_raport + "' "
                        + "where id_nilai_siswa='" + id_nilai_siswa + "'");               
                out.println("<script>alert('Data Nilai Siswa berhasil Diubah...!!!')</script>"
                        + "<meta http-equiv='refresh' content='1;indexguru.jsp?halaman=input_nilai_siswa'/>");
                break;
                
                default:
                break;
            }
         } catch (Exception e) {
            out.println("<script>alert('Gagal... Kemungkinan Id Nilai sudah ada, Silahkan Ulangi!!!')</script>"
                      + "<meta http-equiv='refresh' content='1;indexadmin.jsp?halaman=nilai_siswa&aksi=SIMPAN'/>");

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

