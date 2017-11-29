package util;

import entity.Estado;
import spark.Request;

import java.text.ParseException;

public class EstadoRequestDraw extends Estado {
    private Request request;

    public EstadoRequestDraw(Request request) throws ParseException {
        this.request = request;

        if(this.request.queryParams("idEstado")!=null)
            super.setEstado(Integer.parseInt(this.request.queryParams("idEstado")));

        super.setNombreEstado(this.request.queryParams("nombreEstado"));




    }
}
