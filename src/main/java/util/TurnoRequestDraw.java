package util;

import entity.Turno;
import spark.Request;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class TurnoRequestDraw extends Turno {
    private Request request;

    public TurnoRequestDraw(Request request) throws ParseException {
        this.request = request;

        if(this.request.queryParams("idTurno")!=null)
            super.setIdTurno(Integer.parseInt(this.request.queryParams("idTurno")));

        if(this.request.queryParams("idConductor")!=null)
            super.setIdConductor(Integer.parseInt(this.request.queryParams("idConductor")));

        SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
        if(this.request.queryParams("tiempoInico")!=null)
            super.setHoraInicioTurno(formatter.parse(this.request.queryParams("tiempoInico")));

        if(this.request.queryParams("tiempoFinal")!=null)
            super.setHoraFinTurno(formatter.parse(this.request.queryParams("tiempoFinal")));

        if(this.request.queryParams("inicioSesion")!=null)
            super.setInicioSesion(formatter.parse(this.request.queryParams("inicioSesion")));

        if(this.request.queryParams("finSesion")!=null)
            super.setFinSesion(formatter.parse(this.request.queryParams("finSesion")));





    }
}
