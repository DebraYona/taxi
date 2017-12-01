package service;

import entity.Conductor;
import entity.Estado;

import java.util.List;

public interface EstadoService {
    int insertarEstado(Estado estado) throws Exception;
    List<Estado> listarEstado() throws Exception;
    int eliminarEstado(int codigo) throws Exception;
    List<Estado> buscarEstado(Estado estado) throws Exception;
}
