package dao;

public class MySQLFactoryDAO extends FactoryDAO {

    @Override
    public ClienteDAO getClienteDAO () {
        return new  ClienteMYSQLFactoryDAO();
    }

    @Override
    public ConductorDAO getConductorDAO() {
        return null;
    }


}
