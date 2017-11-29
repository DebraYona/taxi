package util;

import entity.ModeloCarro;
import spark.Request;

import java.text.ParseException;

public class ModeloCarroRequestDraw extends ModeloCarro {
    private Request request;

    public ModeloCarroRequestDraw(Request request) throws ParseException {
        this.request = request;

        if(this.request.queryParams("idModelo")!=null)
            super.setIdModelo(Integer.parseInt(this.request.queryParams("idModelo")));

        super.setNombreModelo(this.request.queryParams("nombremodelo"));
        super.setDescripcionModelo(this.request.queryParams("descripcionmodelo"));





    }
}
