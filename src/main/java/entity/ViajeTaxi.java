package entity;

import java.util.Date;

public class ViajeTaxi {
    int idViaje;
    int idTurno;
    Date tiempoInicio;
    Date TiempoFin;
    String direccionInicial;
    String direccionDestino;
    String puntoInicialGPS;
    String puntoFinalGPS;
    int cancelado;
    int idPago;
    float precio;

    public int getIdPago() {
        return idPago;
    }

    public void setIdPago(int idPago) {
        this.idPago = idPago;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public int getIdViaje() {
        return idViaje;
    }

    public void setIdViaje(int idViaje) {
        this.idViaje = idViaje;
    }

    public int getIdTurno() {
        return idTurno;
    }

    public void setIdTurno(int idTurno) {
        this.idTurno = idTurno;
    }

    public Date getTiempoInicio() {
        return tiempoInicio;
    }

    public void setTiempoInicio(Date tiempoInicio) {
        this.tiempoInicio = tiempoInicio;
    }

    public Date getTiempoFin() {
        return TiempoFin;
    }

    public void setTiempoFin(Date getTiempoFin) {
        this.TiempoFin = getTiempoFin;
    }

    public String getDireccionInicial() {
        return direccionInicial;
    }

    public void setDireccionInicial(String direccionInicial) {
        this.direccionInicial = direccionInicial;
    }


    public String getPuntoInicialGPS() {
        return puntoInicialGPS;
    }

    public void setPuntoInicialGPS(String puntoInicialGPS) {
        this.puntoInicialGPS = puntoInicialGPS;
    }

    public String getDireccionDestino() {
        return direccionDestino;
    }

    public void setDireccionDestino(String direccionDestino) {
        this.direccionDestino = direccionDestino;
    }

    public String getPuntoFinalGPS() {
        return puntoFinalGPS;
    }

    public void setPuntoFinalGPS(String puntoFinalGPS) {
        this.puntoFinalGPS = puntoFinalGPS;
    }

    public int getCancelado() {
        return cancelado;
    }

    public void setCancelado(int cancelado) {
        this.cancelado = cancelado;
    }
}
