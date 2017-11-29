package util;

import entity.EstadoViajeTaxi;
import spark.Request;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class EstadoViajeTaxiRequestDraw extends EstadoViajeTaxi {
 private Request request;

 public EstadoViajeTaxiRequestDraw(Request request)throws ParseException {
     this.request = request;

     if(this.request.queryParams("idEstadoViaje")!=null)
         super.setIdEstadoViaje(Integer.parseInt(this.request.queryParams("idEstadoViaje")));

     if(this.request.queryParams("idViaje")!=null)
         super.setIdViaje(Integer.parseInt(this.request.queryParams("idViaje")));

     SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
     if(this.request.queryParams("tiempoEstado")!=null)
         super.setTiempoEstado(formatter.parse(this.request.queryParams("tiempoEstado")));


     if(this.request.queryParams("idEstado")!=null)
         super.setIdEstado(Integer.parseInt(this.request.queryParams("idEstado")));

     if(this.request.queryParams("idCliente")!=null)
         super.setIdCliente(Integer.parseInt(this.request.queryParams("idCliente")));
     if(this.request.queryParams("idTurno")!=null)
         super.setIdTurno(Integer.parseInt(this.request.queryParams("idTurno")));


     super.setDescripcion(this.request.queryParams("descripcion"));




 }
}
