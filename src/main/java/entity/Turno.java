package entity;

import java.util.Date;

public class Turno {

    int idTurno;
    int idConductor;
    int idUnidad;
    Date horaInicioTurno;
    Date horaFinTurno;

    public int getIdTurno() {
        return idTurno;
    }

    public void setIdTurno(int idTurno) {
        this.idTurno = idTurno;
    }

    public int getIdConductor() {
        return idConductor;
    }

    public void setIdConductor(int idConductor) {
        this.idConductor = idConductor;
    }

    public int getIdUnidad() {
        return idUnidad;
    }

    public void setIdUnidad(int idUnidad) {
        this.idUnidad = idUnidad;
    }

    public Date getHoraInicioTurno() {
        return horaInicioTurno;
    }

    public void setHoraInicioTurno(Date horaInicioTurno) {
        this.horaInicioTurno = horaInicioTurno;
    }

    public Date getHoraFinTurno() {
        return horaFinTurno;
    }

    public void setHoraFinTurno(Date horaFinTurno) {
        this.horaFinTurno = horaFinTurno;
    }

}

