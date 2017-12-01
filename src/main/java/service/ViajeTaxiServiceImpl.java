package service;

import dao.ConductorDAO;
import dao.FactoryDAO;
import dao.ViajeTaxiDAO;
import entity.ViajeTaxi;

import java.util.List;

public class ViajeTaxiServiceImpl implements ViajeTaxiService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    ViajeTaxiDAO viajeTaxiDAO = factory.getViajeTaxi();

    @Override
    public int insertarViajeTaxi(ViajeTaxi viajeTaxi) throws Exception {
        return viajeTaxiDAO.insertarViajeTaxi(viajeTaxi);
    }

    @Override
    public int eliminarViajeTaxi(int codigo) throws Exception {
        return viajeTaxiDAO.eliminarViajeTaxi(codigo);
    }

    @Override
    public List<ViajeTaxi> listarViajeTaxi() throws Exception {
        return viajeTaxiDAO.listarViajeTaxi();
    }

    @Override
    public List<ViajeTaxi> buscarViajeTaxi(ViajeTaxi viajeTaxi) throws Exception {
        return viajeTaxiDAO.buscarViajeTaxi(viajeTaxi);
    }
}
