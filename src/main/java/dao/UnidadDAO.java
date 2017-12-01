package dao;

import entity.Unidad;

import java.util.List;

public interface UnidadDAO {
    int insertarUnidad(Unidad unidad) throws Exception;
    int eliminarUnidad(int codigo) throws Exception;
    List<Unidad> listarUnidad()  throws Exception;
    List<Unidad> buscarUnidad(Unidad unidad) throws Exception;
}
