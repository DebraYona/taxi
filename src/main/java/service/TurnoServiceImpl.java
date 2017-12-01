package service;

import dao.ConductorDAO;
import dao.FactoryDAO;

public class TurnoServiceImpl implements TurnoService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);

}
