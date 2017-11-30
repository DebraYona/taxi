package service;

import dao.ConductorDAO;
import dao.FactoryDAO;

public class UnidadServiceImpl implements  UnidadService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    ConductorDAO conductorDAO = factory.getConductorDAO();
}
