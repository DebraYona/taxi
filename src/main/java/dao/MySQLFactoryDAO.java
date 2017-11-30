package dao;

public class MySQLFactoryDAO extends FactoryDAO {

    @Override
    public ClienteDAO getClienteDAO () {
        return new  ClienteMYSQLFactoryDAO();
    }

    @Override
    public ConductorDAO getConductorDAO() {
        return new ConductorMYSQLFactoryDAO();
    }

    @Override
    public EstadoDAO getEstadoDAO() {
        return new EstadoMYSQLFactoryDAO();
    }

    @Override
    public ModeloCarroDAO getModeloCarroDAO() {
        return new ModeloCarroMYSQLFactoryDAO();
    }


}
