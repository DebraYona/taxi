package dao;

import entity.ViajeTaxi;

import java.util.List;

public interface ViajeTaxiDAO {
    int insertarViajeTaxi(ViajeTaxi viajeTaxi) throws Exception;
    int eliminarViajeTaxi(int codigo) throws Exception;
    List<ViajeTaxi> listarViajeTaxi() throws Exception;
    List<ViajeTaxi> buscarViajeTaxi(ViajeTaxi viajeTaxi) throws Exception;
}
