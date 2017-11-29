package service;

import dao.EstadoDAO;
import dao.FactoryDAO;
import entity.Conductor;

import java.util.List;

public class EstadoServiceImpl implements EstadoService {

    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    EstadoDAO estadoDAO = factory.getEstadoDAO();

    @Override
    public int insertarConductor(Conductor conductor) throws Exception {
        return 0 ;
    }

    @Override
    public List<Conductor> listarConductores() throws Exception {
        return null;
    }

    @Override
    public int eliminarConductor(int codigo) throws Exception {
        return 0;
    }

    @Override
    public List<Conductor> buscarConductor(Conductor conductor) throws Exception {
        return null;
    }
}
