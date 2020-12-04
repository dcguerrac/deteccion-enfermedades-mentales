
package Dao;

import Bean.PersonaBean;
import Util.ConexionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PersonaDao {
    Connection cn = null;
    PreparedStatement pt = null;
    ResultSet rs = null;
    ArrayList<PersonaBean> lista = null;
    PersonaBean objPersonaBean = null;

    public ArrayList<PersonaBean> ListarPersonas() {
        try {

            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("select *  from  persona ;");
            rs = pt.executeQuery();
            lista = new ArrayList<PersonaBean>();
            while (rs.next()) {
                objPersonaBean = new PersonaBean();
                objPersonaBean.setNomPer(rs.getString("NOMBPERSO"));
                objPersonaBean.setAppPer(rs.getString("APEPERSO"));
                lista.add(objPersonaBean);
            }
            pt.close();
            rs.close();
            cn.close();

        } catch (Exception e) {
        }
        return lista;
    }

    public List<PersonaBean> ListarUsuarios() {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT * FROM persona WHERE NivPer='2';");
            rs = pt.executeQuery();
            lista = new ArrayList<>();
            while (rs.next()) {
                objPersonaBean = new PersonaBean();
                objPersonaBean.setCodPer(rs.getInt("CodPer"));
                objPersonaBean.setNomPer(rs.getString("NomPer"));
                objPersonaBean.setAppPer(rs.getString("ApmPer"));
                objPersonaBean.setEdaPer(rs.getString("EdaPer"));
                objPersonaBean.setSexPer(rs.getString("SexPer"));
                objPersonaBean.setTelPer(rs.getString("TelPer"));
                objPersonaBean.setApmPer(rs.getString("ApmPer"));
                lista.add(objPersonaBean);
            }
            pt.close();
            rs.close();
            cn.close();

        } catch (Exception e) {
        }
        return lista;
    }

    public List<PersonaBean> ListarAdministradores() {
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT * FROM persona WHERE NivPer='1';");
            rs = pt.executeQuery();
            lista = new ArrayList<>();
            while (rs.next()) {
                objPersonaBean = new PersonaBean();
                objPersonaBean.setNomPer(rs.getString("NomPer"));
                objPersonaBean.setAppPer(rs.getString("ApmPer"));
                objPersonaBean.setEdaPer(rs.getString("EdaPer"));
                objPersonaBean.setSexPer(rs.getString("SexPer"));
                objPersonaBean.setTelPer(rs.getString("TelPer"));
                lista.add(objPersonaBean);
            }
            pt.close();
            rs.close();
            cn.close();

        } catch (Exception e) {
        }
        return lista;
    }

    public PersonaBean ObtenerPersona(PersonaBean personaBean) throws SQLException {
        PersonaBean personaBeanResponse = null;
        /*        try {*/
        cn = ConexionBD.getConexionBD();
        pt = cn.prepareStatement("select *  from  persona where UsuPer ='" + personaBean.getUsuPer() + "' and PasPer='" + personaBean.getPasPer() + "' and NivPer='" + personaBean.getNivPer() + "'");
        System.out.println("ObtenerPersona : " + pt.toString());
        rs = pt.executeQuery();
        while (rs.next()) {
            personaBeanResponse = new PersonaBean();
            personaBeanResponse.setNomPer(rs.getString("UsuPer"));
            personaBeanResponse.setNivPer(rs.getString("NivPer"));
        }
        System.out.println("Result ObtenerPersona: " + personaBeanResponse);
        pt.close();
        rs.close();
        cn.close();

/*        } catch (Exception e) {

            System.out.println("Error al ObtenerPersona");
        }*/
        return personaBeanResponse;
    }

    public PersonaBean ObtenerPersonaPorUsuario(String usuPer) throws SQLException {
        PersonaBean personaBeanResponse = null;
        /*        try {*/
        cn = ConexionBD.getConexionBD();
        pt = cn.prepareStatement("SELECT PasPer FROM persona where UsuPer ='" + usuPer + "'");
        System.out.println("ObtenerPersonaPorUsuario : " + pt.toString());
        rs = pt.executeQuery();
        while (rs.next()) {
            personaBeanResponse = new PersonaBean();
            personaBeanResponse.setPasPer(rs.getString("PasPer"));
        }
        System.out.println("Result ObtenerPersona: " + personaBeanResponse);
        pt.close();
        rs.close();
        cn.close();

/*        } catch (Exception e) {

            System.out.println("Error al ObtenerPersona");
        }*/
        return personaBeanResponse;
    }

    public List<PersonaBean> ConfUsuario(PersonaBean personaBean) {
        lista = new ArrayList<>();
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("SELECT * FROM persona WHERE UsuPer='" + personaBean.getUsuPer() + "'");
            System.out.println("Query ConfUsuario : " + pt.toString());
            rs = pt.executeQuery();
            while (rs.next()) {
                objPersonaBean = new PersonaBean();
                objPersonaBean.setNomPer(rs.getString("NOMBPERSO"));
                objPersonaBean.setAppPer(rs.getString("APEPERSO"));
                lista.add(objPersonaBean);
            }
            pt.close();
            rs.close();
            cn.close();
        } catch (Exception $ex) {
        }
        return lista;
    }

    public int EliminarPersona(PersonaBean obj) {
        int estado = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("delete  from  persona  where CODPERSO=? ;");
            pt.setInt(1, obj.getCodPer());
            estado = pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
        return estado;
    }

    public int updatePassword(String usuario, String passoword) {
        int estado = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("UPDATE persona SET PasPer = '" + passoword + "' WHERE UsuPer = '" + usuario + "'");
            estado = pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception e) {
            System.out.println("Error al updatePassword" + e);
        }
        return estado;
    }

    public int ActualizarDatosPer(PersonaBean objPersonaBean) {
        int estado = 0;
        try {
            cn = ConexionBD.getConexionBD();
            pt = cn.prepareStatement("UPDATE persona set AppPer='" + objPersonaBean.getAppPer() + "', ApmPer='" + objPersonaBean.getApmPer() + "', NomPer='" + objPersonaBean.getNomPer() + "', EdaPer='" + objPersonaBean.getEdaPer() + "', SexPer='" + objPersonaBean.getSexPer() + "', TelPer='" + objPersonaBean.getTelPer() + "' where NomPer='" + objPersonaBean.getNomPer() + "'");
            estado = pt.executeUpdate();
            pt.close();
            cn.close();
        } catch (Exception ex) {
            System.out.println("Error al ActualizarDatosPer " + ex);
        }
        return estado;
    }

    public boolean CrearPersona(PersonaBean obj) {
        int estado = 0;
        try {
            System.out.println("Nombre de la nueva persona es  " + obj.getNomPer());
            cn = ConexionBD.getConexionBD();
            String query = "insert into persona values ('" + obj.getAppPer() + "','" + obj.getNomPer() + "','" + obj.getCodPer() + "','" + obj.getNomPer() + "');";
            System.out.println("query para insertar es " + query);
            pt = cn.prepareStatement(query);
            pt.setString(1, "DAVID");
            pt.setString(2, "DAVID");
            System.out.println("Se ingreso los datos 1");
            pt.setString(3, obj.getCorPer());
            pt.setString(4, obj.getPasPer());
            estado = pt.executeUpdate();
            System.out.println("Se ingreso los datos");
            System.out.println("Columnas afectadas es " + estado);
            System.out.println("Cdasdasd ");
            pt.close();
            cn.close();
        } catch (Exception e) {
        }
        return true;
    }


}
