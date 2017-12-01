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

    @Override
    public EstadoViajeTaxiDAO getEstadoViajeTaxiDAO() {
        return new EstadoViajeTaxiMYSQLFactoryDAO();
    }

    @Override
    public TipoPagoDAO getTipoPagoDAO() {
        return new TipoPagoMYSQLFactoryDAO();
    }

    @Override
    public UnidadDAO getUnidadDAO() {
        return new UnidadMYSQLFactoryDAO();
    }

    @Override
    public ViajeTaxiDAO getViajeTaxi() {
        return new ViajeTaxiMYSQLFactoryDAO();
    }


}
