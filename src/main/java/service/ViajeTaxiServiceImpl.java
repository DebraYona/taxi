package service;

import dao.ConductorDAO;
import dao.FactoryDAO;

public class ViajeTaxiServiceImpl implements ViajeTaxiService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    ConductorDAO conductorDAO = factory.getConductorDAO();
}
