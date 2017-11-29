package service;

import entity.Cliente;

import java.util.ArrayList;
import dao.ClienteDAO;

import dao.FactoryDAO;

public class ClienteServiceImpl implements ClienteService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    ClienteDAO ClienteDAO = factory.getClienteDAO();


    @Override
    public Cliente buscarCliente(String userame) throws Exception {
        return ClienteDAO.buscarCliente(userame);
    }

    @Override
    public ArrayList<Cliente> listarCliente(Cliente cliente) throws Exception {
        return ClienteDAO.listarClientes(cliente);
    }

    @Override
    public int insertarCliente(Cliente cliente) throws Exception {
        return ClienteDAO.insertarCliente(cliente);
    }

    @Override
    public void modificarCliente(Cliente cliente) throws Exception {
        ClienteDAO.modificarCliente(cliente);
    }

    @Override
    public int eliminarConductor(int codigo) throws Exception {
        return ClienteDAO.eliminarCliente(codigo);
    }

 /*   @Override
    public boolean validarCliente(String username, String password) throws Exception {
        return ClienteDAO.validarCliente(username,password);
    }*/
}
