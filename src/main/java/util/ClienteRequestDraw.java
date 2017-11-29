package util;

import entity.Cliente;
import spark.Request;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class ClienteRequestDraw extends Cliente{





        private Request request;

        public ClienteRequestDraw(Request request) throws ParseException {
            this.request = request;

            if(this.request.queryParams("id_Cliente")!=null)
                super.setId_cliente(Integer.parseInt(this.request.queryParams("id_Cliente")));

            super.setNombreCliente(this.request.queryParams("nombreCliente"));

            super.setApellidoCliente(this.request.queryParams("apellidoCliente"));

            super.setEmail(this.request.queryParams("email"));

            super.setTelefono(this.request.queryParams("telefono"));


        }
    }


