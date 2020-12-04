package Dao;

import Bean.ResultadoBean;
import Util.ConexionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.ZonedDateTime;
import java.util.List;

public class ResultadoDao {
    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;

    public int InsertarResultado(ResultadoBean objResultadoBean) {
        int id = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("INSERT into resultado(EstRes,DiaRes,PunRes,CodPer)" +
                    " values('" + objResultadoBean.getEstRes() + "','" + ZonedDateTime.now().toString() + "','" + objResultadoBean.getPunRes() + "','" + objResultadoBean.getCodPer() + "'");
            System.out.println("Query InsertarResultado es :" + pt.toString());
             id = pt.executeUpdate();
            System.out.println("Id Resultado es :" + id);
            pt.close();
            rs.close();
            cn.close();
            return id;
        } catch (Exception $exc) {
            System.out.println("Error al InsertarResultado");
        }
        return id;
    }

    public List<ResultadoBean> ListarResultados() {
        /*        try {
         *//*            $sql="SELECT * FROM resultado ;";
            $objc = new ConexionBD();
            $cn = $objc->getConexionBD();
            $rs = mysqli_query($cn, $sql);
            $lista = array();
            while($fila=mysqli_fetch_assoc($rs)){
                $lista[] = $fila;
            }
            mysqli_close($cn);*//*
        } catch (Exception $exc) {     
        }*/
        return null;
    }

    public ResultadoBean BuscarResultado(ResultadoBean $objResultadoBean) {
/*        try {
            $sql="SELECT * FROM resultado WHERE CodPer='$objResultadoBean->CodPer'";
            $objc=new ConexionBD();
            $cn=$objc->getConexionBD();
            $rs=mysqli_query($cn,$sql);
            $lista=array();
            while($fila=mysqli_fetch_assoc($rs))
            {
                $lista[]=$fila;
            }
            mysqli_close($cn);
        } catch (Exception $ex) {
            
        }*/
        return null;
    }
}

