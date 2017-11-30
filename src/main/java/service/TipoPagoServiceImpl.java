package service;

import dao.ConductorDAO;
import dao.FactoryDAO;
import entity.TipoPago;

import java.util.List;

public class TipoPagoServiceImpl implements TipoPagoService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    ConductorDAO conductorDAO = factory.getConductorDAO();

    @Override
    public int insertarTipo(TipoPago tipoPago) throws Exception {
        return 0;
    }

    @Override
    public List<TipoPago> listarTipo() throws Exception {
        return null;
    }

    @Override
    public int eliminarTipo(int codigo) throws Exception {
        return 0;
    }

    @Override
    public List<TipoPago> buscarTipo(TipoPago tipoPago) throws Exception {
        return null;
    }
}
