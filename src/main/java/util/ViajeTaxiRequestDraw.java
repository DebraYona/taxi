package util;

import entity.ViajeTaxi;
import spark.Request;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class ViajeTaxiRequestDraw extends ViajeTaxi {


    private Request request;

    public ViajeTaxiRequestDraw(Request request) throws ParseException {
        this.request = request;

        if(this.request.queryParams("idViaje")!=null)
            super.setIdViaje(Integer.parseInt(this.request.queryParams("idViaje")));

        if(this.request.queryParams("idTurno")!=null)
            super.setIdTurno(Integer.parseInt(this.request.queryParams("idTurno")));

        SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
        if(this.request.queryParams("tiempoInico")!=null)
            super.setTiempoInicio(formatter.parse(this.request.queryParams("tiempoInico")));

        if(this.request.queryParams("tiempoFinal")!=null)
            super.setTiempoFin(formatter.parse(this.request.queryParams("tiempoFinal")));


        super.setDireccionInicial(this.request.queryParams("direccionInicial"));

        super.setDireccionDestino(this.request.queryParams("direccionFinal"));
        super.setPuntoInicialGPS(this.request.queryParams("inicialGps"));
        super.setPuntoFinalGPS(this.request.queryParams("finGps"));

        super.setDireccionDestino(this.request.queryParams("destino"));


        if (this.request.queryParams("cancelado") != null)
            super.setCancelado(Integer.parseInt(this.request.queryParams("cancelado")));



    }
}
