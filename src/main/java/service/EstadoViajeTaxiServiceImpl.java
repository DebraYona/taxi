package service;

import dao.EstadoViajeTaxiDAO;
import dao.FactoryDAO;
import entity.EstadoViajeTaxi;

import java.util.List;

public class EstadoViajeTaxiServiceImpl implements EstadoViajeTaxiService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    EstadoViajeTaxiDAO estadoViajeTaxiDAO = factory.getEstadoViajeTaxiDAO();

    @Override
    public int insertarEstadoViajeTaxi(EstadoViajeTaxi estadoViajeTaxi) throws Exception {
        return estadoViajeTaxiDAO.insertarEstadoViajeTaxi(estadoViajeTaxi);
    }

    @Override
    public int eliminarEstadoViajeTaxi(int codigo) throws Exception {
        return estadoViajeTaxiDAO.eliminarEstadoViajeTaxi(codigo);
    }

    @Override
    public List<EstadoViajeTaxi> listarEstadoViajeTaxi() throws Exception {
        return estadoViajeTaxiDAO.listarEstadoViajeTaxi();
    }

    @Override
    public List<EstadoViajeTaxi> buscarEstadoViajeTaxi(EstadoViajeTaxi estadoViajeTaxi) throws Exception {
        return estadoViajeTaxiDAO.buscarEstadoViajeTaxi(estadoViajeTaxi);
    }
}
