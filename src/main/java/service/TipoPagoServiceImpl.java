package service;

import dao.ConductorDAO;
import dao.FactoryDAO;

public class TipoPagoServiceImpl implements TipoPagoService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    ConductorDAO conductorDAO = factory.getConductorDAO();
}
