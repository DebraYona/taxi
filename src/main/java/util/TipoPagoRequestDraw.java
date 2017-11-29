package util;

import entity.TipoPago;
import spark.Request;

import java.text.ParseException;

public class TipoPagoRequestDraw extends TipoPago {
    private Request request;

    public TipoPagoRequestDraw(Request request) throws ParseException {
        this.request = request;

        if(this.request.queryParams("idTipo")!=null)
            super.setIdTipo(Integer.parseInt(this.request.queryParams("idTipo")));

        super.setNombreTipo(this.request.queryParams("nombreTipo"));




    }
}
