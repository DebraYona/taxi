package dao;

import entity.TipoPago;

import java.util.List;

public interface TipoPagoDAO {
    int insertarTipo(TipoPago tipoPago) throws Exception;
    List<TipoPago> listarTipo() throws Exception;
    int eliminarTipo(int codigo) throws Exception;
    List<TipoPago> buscarTipo(TipoPago tipoPago) throws Exception;
}
