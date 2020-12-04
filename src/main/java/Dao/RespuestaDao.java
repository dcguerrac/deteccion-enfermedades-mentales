package Dao;

import Bean.PreguntaBean;
import Bean.RespuestaBean;
import Util.ConexionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class RespuestaDao {
    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;


    public int InsertarRespuesta(RespuestaBean objRespuestaBean) {
        int id = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("INSERT into respuesta(CodPre,CodPun,CodRes)" +
                    " values('" + objRespuestaBean.getCodPre() + "','" + objRespuestaBean.getCodPun() + "','" + objRespuestaBean.getCodResp() + "'");
            System.out.println("Query InsertarRespuesta es :" + pt.toString());
            id = pt.executeUpdate();
            System.out.println("Id Respuesta es :" + id);
            pt.close();
            rs.close();
            cn.close();
            return id;
        } catch (Exception $exc) {
            System.out.println("Error al InsertarRespuesta");
        }
        return id;
    }

    public List<PreguntaBean> ListarPreguntas() {
/*        try {
            $sql = "SELECT * FROM pregunta order by OrdPre;";
            $objc = new ConexionBD();
            $cn = $objc -> getConexionBD();
            $rs = mysqli_query($cn, $sql);
            $lista = array();
            while ($fila = mysqli_fetch_assoc($rs)) {
                $lista[] =$fila;
            }
            mysqli_close($cn);
        } catch (Exception $exc) {
        }*/
        return null;
    }
}
