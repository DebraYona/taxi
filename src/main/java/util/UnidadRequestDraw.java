package util;

import entity.Unidad;
import spark.Request;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class UnidadRequestDraw extends Unidad {
    private Request request;

    public UnidadRequestDraw(Request request) throws ParseException {
        this.request = request;

        if(this.request.queryParams("idUnidad")!=null)
            super.setIdUnidad(Integer.parseInt(this.request.queryParams("idUnidad")));
        super.setPlaca(this.request.queryParams("placa"));

        if(this.request.queryParams("idFabricacion")!=null)
            super.setFabricacion(Integer.parseInt(this.request.queryParams("idFabricacion")));

        if(this.request.queryParams("idModelo")!=null)
            super.setIdModelo(Integer.parseInt(this.request.queryParams("idModelo")));

        if(this.request.queryParams("idConductor")!=null)
            super.setIdConductor(Integer.parseInt(this.request.queryParams("idConductor")));

        if(this.request.queryParams("estado")!=null)
            super.setEstado(Integer.parseInt(this.request.queryParams("estado")));



    }
}
