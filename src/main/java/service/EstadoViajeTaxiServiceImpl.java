package service;

import dao.ConductorDAO;
import dao.FactoryDAO;

public class EstadoViajeTaxiServiceImpl implements EstadoViajeTaxiService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    ConductorDAO conductorDAO = factory.getConductorDAO();
}
