package service;

import dao.ConductorDAO;
import dao.EstadoViajeTaxiDAO;
import dao.FactoryDAO;
import entity.EstadoViajeTaxi;

import java.util.List;

public class EstadoViajeTaxiServiceImpl implements EstadoViajeTaxiService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    EstadoViajeTaxiDAO estadoViajeTaxiDAO = factory.getEstadoViajeTaxiDAO();

    @Override
    public int insertarEstadoViajeTaxi(EstadoViajeTaxi estadoViajeTaxi) throws Exception {
        return 0;
    }

    @Override
    public int eliminarEstadoViajeTaxi(int codigo) throws Exception {
        return 0;
    }

    @Override
    public List<EstadoViajeTaxi> listarEstadoViajeTaxi() throws Exception {
        return null;
    }

    @Override
    public List<EstadoViajeTaxi> buscarEstadoViajeTaxi(EstadoViajeTaxi estadoViajeTaxi) throws Exception {
        return null;
    }
}
