package util;

import entity.Conductor;
import spark.Request;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class ConductorRequestDraw extends Conductor {

    private Request request;

    public ConductorRequestDraw(Request request) throws ParseException {
        this.request = request;

        if(this.request.queryParams("id_Cliente")!=null)
            super.setIdConductor(Integer.parseInt(this.request.queryParams("idConductor")));

        super.setNombreConductor(this.request.queryParams("nombreConductor"));

        super.setApellidoConductor(this.request.queryParams("apellidoConductor"));

        super.setLicencia(this.request.queryParams("licencia"));

        SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
        if(this.request.queryParams("fecha_nacimiento")!=null)
            super.setFech_nac(formatter.parse(this.request.queryParams("fecha_nacimiento")));

        if (this.request.queryParams("estado") != null)
            super.setTrabajando(Integer.parseInt(this.request.queryParams("estado")));


        if(this.request.queryParams("fecha_caducidad")!=null)
            super.setFecha_caducida(formatter.parse(this.request.queryParams("fecha_caducidad")));


    }
}
