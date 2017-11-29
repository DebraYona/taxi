package entity;

import java.util.Date;

public class Conductor {
    int idConductor;
    String nombreConductor;
    String apellidoConductor;
    Date fech_nac;
    String licencia;
    Date fecha_caducida;
    int trabajando;

    public int getIdConductor() {
        return idConductor;
    }

    public void setIdConductor(int idConductor) {
        this.idConductor = idConductor;
    }

    public String getNombreConductor() {
        return nombreConductor;
    }

    public void setNombreConductor(String nombreConductor) {
        this.nombreConductor = nombreConductor;
    }

    public String getApellidoConductor() {
        return apellidoConductor;
    }

    public void setApellidoConductor(String apellidoConductor) {
        this.apellidoConductor = apellidoConductor;
    }

    public Date getFech_nac() {
        return fech_nac;
    }

    public void setFech_nac(Date fech_nac) {
        this.fech_nac = fech_nac;
    }

    public String getLicencia() {
        return licencia;
    }

    public void setLicencia(String licencia) {
        this.licencia = licencia;
    }

    public Date getFecha_caducida() {
        return fecha_caducida;
    }

    public void setFecha_caducida(Date fecha_caducida) {
        this.fecha_caducida = fecha_caducida;
    }

    public int getTrabajando() {
        return trabajando;
    }

    public void setTrabajando(int trabajando) {
        this.trabajando = trabajando;
    }
}
