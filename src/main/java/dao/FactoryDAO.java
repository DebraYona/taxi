package dao;



public abstract class FactoryDAO {

    public static final int TXT_FACTORY = 1;
    public static final int MYSQL_FACTORY = 2;

    public abstract ClienteDAO getClienteDAO();
    public abstract ConductorDAO getConductorDAO();
    public abstract EstadoDAO getEstadoDAO();
    public abstract ModeloCarroDAO getModeloCarroDAO();
    public abstract EstadoViajeTaxiDAO getEstadoViajeTaxiDAO();
    public abstract TipoPagoDAO getTipoPagoDAO();
    public abstract UnidadDAO getUnidadDAO();
    public abstract ViajeTaxiDAO getViajeTaxi();


    public static FactoryDAO getFactory(int claveFactory){
        switch(claveFactory){
            case TXT_FACTORY:
                return null;//new TxtFactoryDao();
            case MYSQL_FACTORY:
                return new MySQLFactoryDAO();
            default:
                throw new IllegalArgumentException();
        }
    }
}
