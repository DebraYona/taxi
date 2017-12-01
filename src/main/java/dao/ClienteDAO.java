package dao;

import entity.Cliente;

import java.sql.SQLException;
import java.util.ArrayList;

public interface ClienteDAO {
        Cliente buscarCliente(String nombrecliente);
        ArrayList<Cliente> listarClientes() throws SQLException;
        int insertarCliente(Cliente cliente);
        int modificarCliente(Cliente cliente) throws Exception;
        int eliminarCliente(int codigo) throws Exception;
        //boolean validarCliente(String username, String password);
}



