package Dao;

import Bean.PuntajeBean;
import Util.ConexionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PuntajeDao {
    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<PuntajeBean> lista = null;
    PuntajeBean puntajeBean = null;

    public void InsertarPuntaje(PuntajeBean objPuntajeBean) {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("INSERT into puntaje(DesPun) values('" + objPuntajeBean.getDesPun() + "'");
            rs = pt.executeQuery();
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception $exc) {
            System.out.println("Error InsertarPuntaje");
        }
    }

    public List<PuntajeBean> ListarPuntajes() throws SQLException {
    /*    try {*/
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT * FROM puntaje ORDER BY NumPun;");
            System.out.println("Query ListarPuntajes : " + pt.toString());
            rs = pt.executeQuery();
            lista = new ArrayList<>();
            while (rs.next()) {
                puntajeBean = new PuntajeBean();
                puntajeBean.setDesPun(rs.getString("DesPun"));
                puntajeBean.setCodPun(rs.getString("CodPun"));
                puntajeBean.setNumPun(rs.getInt("NumPun"));
                lista.add(puntajeBean);
            }
            pt.close();
            rs.close();
            cn.close();
/*        } catch (Exception $exc) {
            System.out.println("Error ListarPuntajes");
        }*/

        return lista;
    }

    public List<PuntajeBean> MaxPuntaje() {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT * FROM puntaje ORDER BY NumPun DESC;");
            rs = pt.executeQuery();
            lista = new ArrayList<>();
            while (rs.next()) {
                puntajeBean = new PuntajeBean();
                puntajeBean.setDesPun(rs.getString("DesPun"));
                puntajeBean.setCodPun(rs.getString("CodPun"));
                puntajeBean.setNumPun(rs.getInt("NumPun"));
                lista.add(puntajeBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception $exc) {
            System.out.println("Error MaxPuntaje");
        }
        return lista;
    }
}
