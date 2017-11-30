package service;

import dao.EstadoDAO;
import dao.FactoryDAO;
import entity.Conductor;
import entity.Estado;

import java.util.List;

public class EstadoServiceImpl implements EstadoService {

    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    EstadoDAO estadoDAO = factory.getEstadoDAO();


    @Override
    public int insertarEstado(Estado estado) throws Exception {
        return estadoDAO.insertarEstado(estado);
    }

    @Override
    public List<Estado> listarEstado() throws Exception {
        return estadoDAO.listarEstado();
    }

    @Override
    public int eliminarEstado(int codigo) throws Exception {
        return estadoDAO.eliminarEstado(codigo);
    }

    @Override
    public List<Estado> buscarEstado(Estado estado) throws Exception {
        return estadoDAO.buscarEstado(estado);
    }
}
