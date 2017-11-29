package service;

import dao.ConductorDAO;
import dao.FactoryDAO;
import entity.Conductor;

import java.util.List;

public class ConductorServiceImpl implements ConductorService{
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    ConductorDAO conductorDAO = factory.getConductorDAO();

    @Override
    public int insertarConductor(Conductor conductor) throws Exception {
        return conductorDAO.insertarConductor(conductor);
    }

    @Override
    public List<Conductor> listarConductores() throws Exception {
        return conductorDAO.listarConductores();
    }

    @Override
    public int eliminarConductor(int codigo) throws Exception {
        return conductorDAO.eliminarConductor(codigo);
    }

    @Override
    public List<Conductor> buscarConductor(Conductor conductor) throws Exception {
        return conductorDAO.buscarConductor(conductor);
    }
}
