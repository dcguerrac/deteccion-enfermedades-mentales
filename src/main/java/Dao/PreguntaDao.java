package Dao;

import Bean.PersonaBean;
import Bean.PreguntaBean;
import Util.ConexionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class PreguntaDao {
    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<PreguntaBean> lista = null;
    PreguntaBean preguntaBean = null;

    public ArrayList<PreguntaBean> ListarPreguntas() {
        try {

            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("select * from  pregunta ;");
            rs = pt.executeQuery();
            lista = new ArrayList<>();
            while (rs.next()) {
                preguntaBean = new PreguntaBean();
                preguntaBean.setCodPre(rs.getString("CodPre"));
                preguntaBean.setDesPre(rs.getString("DesPre"));
                preguntaBean.setOrdPre(rs.getString("OrdPre"));
                lista.add(preguntaBean);
            }
            pt.close();
            rs.close();
            cn.close();

        } catch (Exception e) {
            System.out.println("#################ERROR AL CONSULTAR PREGUNTAS############");
        }
        return lista;
    }

}
