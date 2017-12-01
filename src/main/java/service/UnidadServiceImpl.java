package service;

import dao.ConductorDAO;
import dao.FactoryDAO;
import dao.UnidadDAO;
import entity.Unidad;

import java.util.List;

public class UnidadServiceImpl implements  UnidadService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    UnidadDAO unidadDAO = factory.getUnidadDAO();

    @Override
    public int insertarUnidad(Unidad unidad) throws Exception {
        return unidadDAO.insertarUnidad(unidad);
    }

    @Override
    public int eliminarUnidad(int codigo) throws Exception {
        return unidadDAO.eliminarUnidad(codigo);
    }

    @Override
    public List<Unidad> listarUnidad() throws Exception {
        return unidadDAO.listarUnidad();
    }

    @Override
    public List<Unidad> buscarUnidad(Unidad unidad) throws Exception {
        return unidadDAO.buscarUnidad(unidad);
    }
}
