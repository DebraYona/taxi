import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import entity.*;
import service.*;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import util.DateUtil;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;


public class Main {

  public static void main(String[] args) {

    port((System.getenv("PORT") != null)?Integer.valueOf(System.getenv("PORT")):8001);
    staticFileLocation("/public");
/*
    before("/", (request, response) -> {
      if (request.session().attribute("user") == null) {
        response.redirect("/login");
      }
    });
/*
    before("/ingresar/*", (request, response) -> {
      if (request.session().attribute("user") == null) {
        response.redirect("/login");
      }
    });

    before("/registrar/*", (request, response) -> {
      if (request.session().attribute("user") == null) {
        response.redirect("/login");
      }
    });

    get("/hello", (req, res) -> {
      String world = "world";
      if(req.session().attribute("user") != null){
        world = req.session().attribute("user");
      }
      return "Hello " + world +"!";
    });

    get("/logout", (req, res) -> {
      req.session().removeAttribute("user");
      res.redirect("/login");
      return "Goodbye!";
    });
*/
    get("/", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "index.ftl");
    }, new FreeMarkerEngine());

    get("/servicios", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "services.ftl");
    }, new FreeMarkerEngine());

    get("/conductores", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "drivers.ftl");
    }, new FreeMarkerEngine());

    get("/carros", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "cars.ftl");
    }, new FreeMarkerEngine());

    get("/modelos", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "modeloCarro.ftl");
    }, new FreeMarkerEngine());

    get("/ubicaciones", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "locations.ftl");
    }, new FreeMarkerEngine());

    get("/trabajos", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "jobs.ftl");
    }, new FreeMarkerEngine());

    get("/contactanos", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "contact.ftl");
    }, new FreeMarkerEngine());

/*
    get("/login", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "login.ftl");
    }, new FreeMarkerEngine());

    get("/master", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "master.ftl");
    }, new FreeMarkerEngine());

    get("/ingresar/paciente", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "ingresar_paciente.ftl");
    }, new FreeMarkerEngine());

    get("/ingresar/psicologo", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "ingresar_psicologo.ftl");
    }, new FreeMarkerEngine());

    get("/registrar/sesion", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "registrar_sesion.ftl");
    }, new FreeMarkerEngine());

    post("/form/ingresar_paciente", (req, res) -> {

      String nombres = req.queryParams("nombres");
      String apellido_paterno = req.queryParams("apellido_paterno");
      String apellido_materno = req.queryParams("apellido_materno");
      String fecha_nacimiento = req.queryParams("fecha_nacimiento");
      String direccion = req.queryParams("direccion");
      String email = req.queryParams("email");

      String tipo = req.queryParams("tipo");

      DateFormat formatter = new SimpleDateFormat("MM/dd/yy");
      Date date = formatter.parse(fecha_nacimiento);


      Usuario usuario = new Usuario();

      usuario.setNombres(nombres);
      usuario.setApellido_paterno(apellido_paterno);
      usuario.setApellido_materno(apellido_materno);
      usuario.setFecha_nacimiento(date);
      usuario.setDireccion(direccion);
      usuario.setEmail(email);

      usuario.setUsername(null);
      usuario.setPassword(null);

      UsuarioServiceImpl service = new UsuarioServiceImpl();
      int codigo_usuario = service.insertarUsuario(usuario);

      Paciente paciente = new Paciente();
      paciente.setTipo(tipo);
      paciente.setCodigo_usuario(codigo_usuario);

      PacienteServiceImpl servicePaciente = new PacienteServiceImpl();
      servicePaciente.insertarPaciente(paciente);

      res.redirect("/ingresar/paciente?msg=ok");
      return "OK";
    });

    post("/form/ingresar_psicologo", (req, res) -> {

      String nombres = req.queryParams("nombres");
      String apellido_paterno = req.queryParams("apellido_paterno");
      String apellido_materno = req.queryParams("apellido_materno");
      String fecha_nacimiento = req.queryParams("fecha_nacimiento");
      String direccion = req.queryParams("direccion");
      String email = req.queryParams("email");

      String username = req.queryParams("username");
      String password = req.queryParams("password");

      String especialidad = req.queryParams("especialidad");

      DateFormat formatter = new SimpleDateFormat("MM/dd/yy");
      Date date = formatter.parse(fecha_nacimiento);

      Usuario usuario = new Usuario();

      usuario.setNombres(nombres);
      usuario.setApellido_paterno(apellido_paterno);
      usuario.setApellido_materno(apellido_materno);
      usuario.setFecha_nacimiento(date);
      usuario.setDireccion(direccion);
      usuario.setEmail(email);

      usuario.setUsername(username);
      usuario.setPassword(password);

      UsuarioServiceImpl service = new UsuarioServiceImpl();
      int codigo_usuario = service.insertarUsuario(usuario);

      Psicologo psicologo = new Psicologo();
      psicologo.setEspecialidad(especialidad);
      psicologo.setCodigo_usuario(codigo_usuario);

      PsicologoServiceImpl psicologoService = new PsicologoServiceImpl();
      int psi = psicologoService.insertarPsicologo(psicologo);
      System.out.println(psi);

      res.redirect("/ingresar/psicologo?msg=ok");
      return "OK";
    });

    post("/form/registrar_sesion", (req, res) -> {

      Sesion sesion = new Sesion();
      sesion.setCodigo_psicologo(Integer.parseInt(req.queryParams("codigo_psicologo")));
      sesion.setCodigo_paciente(Integer.parseInt(req.queryParams("codigo_paciente")));
      sesion.setLugar(req.queryParams("lugar"));
      DateFormat formatter = new SimpleDateFormat("MM/dd/yy HH:mm:ss");
      System.out.println(req.queryParams("fecha_reunion")+" "+req.queryParams("hora")+":00:00");
      sesion.setFecha_reunion(formatter.parse(req.queryParams("fecha_reunion")+" "+req.queryParams("hora")+":00:00"));
      System.out.println(sesion.getFecha_reunion());
      sesion.setEstado("1");
      sesion.setDuracion(Integer.parseInt(req.queryParams("duracion")));
      sesion.setFecha_creacion(new Date());

      SesionServiceImpl service = new SesionServiceImpl();

      service.insertar(sesion);

      res.redirect("/registrar/sesion?msg=ok");
      return "OK";
    });

    post("/validar",(req, res) -> {

      Map<String, Object> attributes = new HashMap<>();

      String username = req.queryParams("username");
      String password = req.queryParams("password");

      UsuarioServiceImpl service = new UsuarioServiceImpl();
      try {
        if(service.validarUsuario(username, password)){
          //Creacion de la sesion
          req.session().attribute("user", username);

          res.redirect("/");
        }else{
          res.redirect("/login");
        }
      } catch (Exception e) {
        e.printStackTrace();
      }
      //return new ModelAndView(attributes, "login.ftl");
      return "OK";
    });

    get("/test", (req, res) -> {

      Map<String, Object> attributes = new HashMap<>();

      attributes.put("dateutil", new DateUtil());

      return new ModelAndView(attributes, "listado_sesion.ftl");
    }, new FreeMarkerEngine());

    get("/", (request, response) -> {
      Map<String, Object> attributes = new HashMap<>();
      attributes.put("message", "Hello Tineo!");

      return new ModelAndView(attributes, "index.ftl");
    }, new FreeMarkerEngine());


    Gson gson = new GsonBuilder()
            .setDateFormat("MM/dd/yyyy HH:mm:ss").create();
            //.setDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS").create();
            //new Gson ();
    get("/json","application/json",(request,response)->{

      Psicologo psico =  new Psicologo();
      psico.setNombres("s");

      PsicologoServiceImpl s =  new PsicologoServiceImpl();
      return s.buscarPsicologos(psico);

      //PacienteServiceImpl pa= new PacienteServiceImpl();
      //return pa.listarPaciente();

    },gson::toJson);

    get("/json/psicologo/:accion","application/json",(request,response)->{

      String accion = request.params(":accion");

      Psicologo psicologo =  new PsicologoRequestDraw(request);
      int codigo = psicologo.getCodigo_psicologo();

      PsicologoServiceImpl pa= new PsicologoServiceImpl();

      Object respuesta;

      switch (accion){
        case "agregar": respuesta = pa.insertarPsicologo(psicologo); break;
        case "buscar": respuesta = pa.buscarPsicologos(psicologo); break;
        case "listar": respuesta = pa.listarPsicologos(); break;
        case "eliminar": respuesta = pa.eliminarPsicologo(codigo);break;
        default:  respuesta =  "Ninguna coincidencia"; break;
      }

      return respuesta;

    },gson::toJson);

    get("/json/paciente/:accion","application/json",(request,response)->{

      String accion = request.params(":accion");

      Paciente paciente=  new PacienteRequestDraw(request);
      int codigo = paciente.getCodigo_paciente();

      PacienteServiceImpl pa= new PacienteServiceImpl();

      Object respuesta;

      switch (accion){
        case "agregar": respuesta = pa.insertarPaciente(paciente); break;
        case "buscar": respuesta = pa.buscarPacientes(paciente); break;
        case "listar": respuesta = pa.listarPaciente(); break;
        case "eliminar": respuesta = pa.eliminarPaciente(codigo);break;
        default:  respuesta =  "Ninguna coincidencia"; break;
      }

      return respuesta;

    },gson::toJson);


    get("/json/sesion/:accion","application/json",(request,response)->{

      String accion = request.params(":accion");

      Sesion sesion =  new SesionRequestDraw(request);
      int codigo = sesion.getCodigo_sesion();


      SesionServiceImpl service = new SesionServiceImpl();

      Object respuesta = "";

      switch (accion){
        case "agregar": respuesta = service.insertar(sesion); break;
        case "buscar": respuesta = service.buscar(sesion); break;
        case "listar": respuesta = service.listar(); break;
        case "eliminar": respuesta = service.eliminar(codigo);break;
        default:  respuesta =  "Ninguna coincidencia"; break;
      }

      return respuesta;

    },gson::toJson);
    
    
    get("/json/observacion/:accion","application/json",(request,response)->{

      String accion = request.params(":accion");

      Observacion observacion =  new Observacion();
      // Observacion observacion =  new ObservacionRequestDraw(request);
      int codigo = observacion.getCodigo_observacion();


      ObservacionServiceImpl service = new ObservacionServiceImpl();

      Object respuesta = "";

      switch (accion){
        case "agregar": respuesta = service.insertar(observacion); break;
        case "buscar": respuesta = service.buscar(observacion); break;
        case "listar": respuesta = service.listar(); break;
        case "eliminar": respuesta = service.eliminar(codigo);break;
        default:  respuesta =  "Ninguna coincidencia"; break;
      }

      return respuesta;

    },gson::toJson);

*/
    /* Cliente */
    get("/ingresar/cliente", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "index.ftl");
    }, new FreeMarkerEngine());



    get("/form/ingresar_cliente", (req, res) -> {

      String nombres = req.queryParams("name");
      String apellidoCliente = req.queryParams("apellidos");
      String email = req.queryParams("email");

      String telefono = req.queryParams("phone");
      Cliente cliente = new Cliente();

      cliente.setNombreCliente(nombres);
      cliente.setApellidoCliente(apellidoCliente);

      cliente.setEmail(email);
      cliente.setTelefono(telefono);


      ClienteServiceImpl service = new ClienteServiceImpl();
      int codigo_cliente = 0;
      try {
        codigo_cliente = service.insertarCliente(cliente);
      } catch (Exception e) {
        e.printStackTrace();
      }

      res.redirect("/ingresar/cliente?msg=ok");
      return "OK";
    });

    get("/form/ingresar_viaje", (req,res) -> {

        String nombre = req.queryParams("name");
        String email = req.queryParams("email");
        String inicio = req.queryParams("from");
        String fin = req.queryParams("to");
        String ginicio = req.queryParams("gi");
        String gfin = req.queryParams("gf");
        String tini = req.queryParams("date") + " " + req.queryParams("time");
        DateFormat fi = new SimpleDateFormat("dd MMMMM, yyyy HH:mm");
        Date ti = fi.parse(tini);
        int pasa = Integer.parseInt(req.queryParams("passengers"));
        int pago = Integer.parseInt(req.queryParams("pago"));

        ViajeTaxi viajeTaxi = new ViajeTaxi();

        viajeTaxi.setDireccionInicial(inicio);
        viajeTaxi.setPuntoInicialGPS(ginicio);
        viajeTaxi.setDireccionDestino(fin);
        viajeTaxi.setPuntoFinalGPS(gfin);
        viajeTaxi.setTiempoInicio(ti);
        viajeTaxi.setIdPago(pago);

        ViajeTaxiServiceImpl service = new ViajeTaxiServiceImpl();

        res.redirect("/ingresar/conductor");
        return "OK";
    });

    /*CONDUCTOR*/

    get("/ingresar/conductor", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "job.ftl");
    }, new FreeMarkerEngine());



    get("/form/ingresar_conductor", (req, res) -> {

      String nombres = req.queryParams("name");
      String apellidoCliente = req.queryParams("ape");
      String nacmiento  = req.queryParams("nacimiento");
      String licencia = req.queryParams("licencia");
      String caducidad = req.queryParams("caducidad");
      DateFormat formatter = new SimpleDateFormat("dd MMMMM, yyyy");
      java.util.Date date = formatter.parse(nacmiento);
      DateFormat formatFeik = new SimpleDateFormat("yyyy");
      Date cadi = formatFeik.parse(caducidad);

      Conductor conductor = new Conductor();

      conductor.setNombreConductor(nombres);
      conductor.setApellidoConductor(apellidoCliente);
      conductor.setFech_nac(date);
      conductor.setLicencia(licencia);
      conductor.setFecha_caducida(cadi);



      ConductorServiceImpl service = new ConductorServiceImpl();
      int idConductor = 0;
      try {
         idConductor = service.insertarConductor(conductor);
      } catch (Exception e) {
        e.printStackTrace();
      }

      res.redirect("/ingresar/conductor?msg=ok");
      return "OK";
    });

    get("/trabajo", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "jobs.ftl");
    }, new FreeMarkerEngine());


    get("/servicios", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "services.ftl");
    }, new FreeMarkerEngine());


    get("/conductores", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "drivers.ftl");
    }, new FreeMarkerEngine());

    get("/carros", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "cars.ftl");
    }, new FreeMarkerEngine());

    get("/localizacion", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "locations.ftl");
    }, new FreeMarkerEngine());

    get("/garaje", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "garage.ftl");
    }, new FreeMarkerEngine());

    get("/contactanos", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();
      return new ModelAndView(attributes, "contact.ftl");
    }, new FreeMarkerEngine());


    get("/createdb", (req, res) -> {
      Map<String, Object> attributes = new HashMap<>();

      util.Connection conection =  new util.Connection();
      try {
        conection.runCreate("structureTaxi.sql");
        conection.runCreate("functions.sql");
        conection.runCreate("procedures.sql");
        conection.runCreate("triggers.sql");
        System.out.println("SQL OK!");
      } catch (IOException e) {
        e.printStackTrace();
      } catch (SQLException e) {
        e.printStackTrace();
      }
      ;

      return new ModelAndView(attributes, "contact.ftl");
    }, new FreeMarkerEngine());
  }







}