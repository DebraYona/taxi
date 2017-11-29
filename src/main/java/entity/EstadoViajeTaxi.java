package entity;

import java.util.Date;

public class EstadoViajeTaxi {
    int idEstadoViaje;
    int idViaje;
    int idEstado;
    Date tiempoEstado;
    int idCliente;
    int idTurno;
    String descripcion;

    public int getIdEstadoViaje() {
        return idEstadoViaje;
    }

    public void setIdEstadoViaje(int idEstadoViaje) {
        this.idEstadoViaje = idEstadoViaje;
    }

    public int getIdViaje() {
        return idViaje;
    }

    public void setIdViaje(int idViaje) {
        this.idViaje = idViaje;
    }

    public int getIdEstado() {
        return idEstado;
    }

    public void setIdEstado(int idEstado) {
        this.idEstado = idEstado;
    }

    public Date getTiempoEstado() {
        return tiempoEstado;
    }

    public void setTiempoEstado(Date tiempoEstado) {
        this.tiempoEstado = tiempoEstado;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public int getIdTurno() {
        return idTurno;
    }

    public void setIdTurno(int idTurno) {
        this.idTurno = idTurno;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
