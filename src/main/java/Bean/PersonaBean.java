
package Bean;/*
@Getter
@Setter*/

public class PersonaBean {
    private int CodPer;
    private String AppPer;
    private String NomPer;
    private String CorPer;
    private String PasPer;

    public int getCodPer() {
        return CodPer;
    }

    public void setCodPer(int codPer) {
        CodPer = codPer;
    }

    public String getAppPer() {
        return AppPer;
    }

    public void setAppPer(String appPer) {
        AppPer = appPer;
    }

    public String getPasPer() {
        return PasPer;
    }

    public void setPasPer(String pasPer) {
        PasPer = pasPer;
    }

    public String getNomPer() {
        return NomPer;
    }

    public void setNomPer(String nomPer) {
        NomPer = nomPer;
    }

    public String getCorPer() {
        return CorPer;
    }

    public void setCorPer(String corPer) {
        CorPer = corPer;
    }
}
