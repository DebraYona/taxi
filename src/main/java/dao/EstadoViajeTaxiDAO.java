package dao;
import entity.EstadoViajeTaxi;

import java.util.List;

public interface EstadoViajeTaxiDAO {
    int insertarEstadoViajeTaxi(EstadoViajeTaxi estadoViajeTaxi) throws Exception;
    int eliminarEstadoViajeTaxi(int codigo) throws Exception;
    List<EstadoViajeTaxi> listarEstadoViajeTaxi() throws Exception;
    List<EstadoViajeTaxi> buscarEstadoViajeTaxi(EstadoViajeTaxi estadoViajeTaxi) throws Exception;
}
