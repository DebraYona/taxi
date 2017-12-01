package dao;

import entity.EstadoViajeTaxi;
import java.sql.*;

import java.util.ArrayList;
import java.util.List;

public class EstadoViajeTaxiMYSQLFactoryDAO implements EstadoViajeTaxiDAO{
    private Connection connection = null;

    public EstadoViajeTaxiMYSQLFactoryDAO() {
        this.connection = new util.Connection().getConnection();
    }

    @Override
    public int insertarEstadoViajeTaxi(EstadoViajeTaxi estadoViajeTaxi) throws Exception {
        PreparedStatement ps;
        int last = 0;

        try {
            ps = this.connection.prepareStatement("INSERT INTO EstadoViajeTaxi VALUES(NULL,?,?,NULL,?,?,?)",Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1,estadoViajeTaxi.getIdViaje());
            ps.setInt(2,estadoViajeTaxi.getIdEstado());
            ps.setInt(3,estadoViajeTaxi.getIdCliente());
            ps.setInt(4,estadoViajeTaxi.getIdTurno());
            ps.setString(5,estadoViajeTaxi.getDescripcion());

            ps.executeUpdate();

            ResultSet rs =  ps.getGeneratedKeys();
            if(rs.next()){
                last = rs.getInt(1);
            }

            estadoViajeTaxi.setIdEstadoViaje(last);

        }catch (SQLException e){
            e.printStackTrace();
        }
        return last;
    }

    @Override
    public int eliminarEstadoViajeTaxi(int codigo) throws Exception {
        PreparedStatement ps;
        int valor;

        try {
            ps = this.connection.prepareStatement("DELETE * FROM EstadoViajeTaxi WHERE id = ?");
            ps.setInt(1,codigo);

            valor = ps.executeUpdate();

            if(valor>0)
                return valor;
            return 0;

        }catch (SQLException e){
            e.printStackTrace();
        }

        return -1;
    }

    @Override
    public List<EstadoViajeTaxi> listarEstadoViajeTaxi() throws Exception {
        PreparedStatement ps;
        EstadoViajeTaxi estadoViajeTaxi;
        List<EstadoViajeTaxi> listi = new ArrayList<>();

        try {
            ps = this.connection.prepareStatement("SELECT * FROM EstadoViajeTaxi");

            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                estadoViajeTaxi = new EstadoViajeTaxi();
                estadoViajeTaxi.setIdEstadoViaje(rs.getInt(1));
                estadoViajeTaxi.setIdEstado(rs.getInt(2));
                estadoViajeTaxi.setIdCliente(rs.getInt(3));
                estadoViajeTaxi.setIdCliente(rs.getInt(4));
                estadoViajeTaxi.setTiempoEstado(rs.getDate(5));
                estadoViajeTaxi.setIdViaje(rs.getInt(6));
                estadoViajeTaxi.setIdTurno(rs.getInt(7));

                listi.add(estadoViajeTaxi);
            }

        }catch (SQLException e){
            e.printStackTrace();
        }
        return listi;
    }

    @Override
    public List<EstadoViajeTaxi> buscarEstadoViajeTaxi(EstadoViajeTaxi estadoViajeTaxi) throws Exception {
        PreparedStatement ps;
        EstadoViajeTaxi evt;
        List<EstadoViajeTaxi> listi = new ArrayList<>();
        try {
            ps = this.connection.prepareStatement("SELECT * FROM EstadoViajeTaxi WHERE id = ?");
            ps.setInt(1,estadoViajeTaxi.getIdEstadoViaje());

            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                evt = new EstadoViajeTaxi();
                evt.setIdEstadoViaje(rs.getInt(1));
                evt.setIdEstado(rs.getInt(2));
                evt.setIdCliente(rs.getInt(3));
                evt.setIdCliente(rs.getInt(4));
                evt.setTiempoEstado(rs.getDate(5));
                evt.setIdViaje(rs.getInt(6));
                evt.setIdTurno(rs.getInt(7));

                listi.add(evt);
            }

        }catch (SQLException e){
            e.printStackTrace();
        }

        return listi;
    }
}
