package service;

import entity.Conductor;

import java.util.List;

public interface EstadoService {
    int insertarConductor(Conductor conductor) throws Exception;
    List<Conductor> listarConductores() throws Exception;
    int eliminarConductor(int codigo)throws Exception;
    List<Conductor> buscarConductor(Conductor conductor) throws Exception;
}

