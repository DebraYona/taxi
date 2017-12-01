package service;

import dao.ConductorDAO;
import dao.FactoryDAO;
import dao.TipoPagoDAO;
import entity.TipoPago;

import java.util.List;

public class TipoPagoServiceImpl implements TipoPagoService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    TipoPagoDAO tipoPagoDAO = factory.getTipoPagoDAO();

    @Override
    public int insertarTipo(TipoPago tipoPago) throws Exception {
        return tipoPagoDAO.insertarTipo(tipoPago);
    }

    @Override
    public List<TipoPago> listarTipo() throws Exception {
        return tipoPagoDAO.listarTipo();
    }

    @Override
    public int eliminarTipo(int codigo) throws Exception {
        return tipoPagoDAO.eliminarTipo(codigo);
    }

    @Override
    public List<TipoPago> buscarTipo(TipoPago tipoPago) throws Exception {
        return tipoPagoDAO.buscarTipo(tipoPago);
    }
}
