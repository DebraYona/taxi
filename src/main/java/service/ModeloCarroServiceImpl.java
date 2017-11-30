package service;

import dao.ConductorDAO;
import dao.FactoryDAO;
import dao.ModeloCarroDAO;
import entity.ModeloCarro;

import java.util.List;

public class ModeloCarroServiceImpl implements ModeloCarroService {
    FactoryDAO factory = FactoryDAO.getFactory(FactoryDAO.MYSQL_FACTORY);
    ModeloCarroDAO modeloCarroDAO = factory.getModeloCarroDAO();


    @Override
    public int insertarModelo(ModeloCarro modelo) throws Exception {
        return modeloCarroDAO.insertarModelo(modelo);
    }

    @Override
    public List<ModeloCarro> listarModelo() throws Exception {
        return modeloCarroDAO.listarModelo();
    }

    @Override
    public int eliminarModelo(int codigo) throws Exception {
        return modeloCarroDAO.eliminarModelo(codigo);
    }

    @Override
    public List<ModeloCarro> buscarModelo(ModeloCarro modelo) throws Exception {
        return modeloCarroDAO.buscarModelo(modelo);
    }
}
