package dao;

import entity.Estado;
import entity.ModeloCarro;

import java.util.List;

public interface ModeloCarroDAO {
    int insertarModelo(ModeloCarro modelo) throws Exception;
    List<ModeloCarro> listarModelo() throws Exception;
    int eliminarModelo(int codigo) throws Exception;
    List<ModeloCarro> buscarModelo(ModeloCarro modelo) throws Exception;
}
