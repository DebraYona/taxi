package dao;

import entity.Cliente;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ClienteDAO {




        Cliente buscarCliente(String nombrecliente);

        ArrayList<Cliente> listarClientes(Cliente cliente) throws SQLException;
        int insertarCliente(Cliente cliente);
        void modificarCliente(Cliente cliente);
        int eliminarCliente(int codigo) throws Exception;
      /*  boolean validarCliente(String username, String password);*/
    }



