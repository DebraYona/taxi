package dao;

import entity.ViajeTaxi;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ViajeTaxiMYSQLFactoryDAO implements ViajeTaxiDAO {
    private Connection connection;
    @Override
    public int insertarViajeTaxi(ViajeTaxi viajeTaxi) throws Exception {
        PreparedStatement ps;
        int last = 0;
        try {
            ps = this.connection.prepareStatement("INSERT INTO ViajeTaxi VALUES(NULL,?,?,?,?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1,viajeTaxi.getIdTurno());
            ps.setTimestamp(2, new Timestamp(viajeTaxi.getTiempoInicio().getTime()));
            ps.setTimestamp(3, new Timestamp(viajeTaxi.getTiempoFin().getTime()));
            ps.setString(4,viajeTaxi.getDireccionInicial());
            ps.setString(5,viajeTaxi.getPuntoInicialGPS());
            ps.setString(6,viajeTaxi.getDireccionDestino());
            ps.setString(7,viajeTaxi.getPuntoFinalGPS());
            ps.setInt(8,viajeTaxi.getCancelado());
            ps.setInt(9,viajeTaxi.getIdPago());
            ps.setFloat(10,viajeTaxi.getPrecio());

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();

            if (rs.next()) {
                last = rs.getInt(1);
            }

            viajeTaxi.setIdViaje(last);
        }catch (SQLException e){
            e.printStackTrace();
        }
        return last;
    }

    @Override
    public int eliminarViajeTaxi(int codigo) throws Exception {
        return 0;
    }

    @Override
    public List<ViajeTaxi> listarViajeTaxi() throws Exception {
        PreparedStatement ps;
        ViajeTaxi viajeTaxi;
        List<ViajeTaxi> listi = new ArrayList<>();

        try {
            ps = this.connection.prepareStatement("SELECT * FROM ViajeTaxi");
            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                viajeTaxi = new ViajeTaxi();
                viajeTaxi.setIdViaje(rs.getInt(1));
                viajeTaxi.setIdTurno(rs.getInt(2));
                viajeTaxi.setTiempoInicio(rs.getDate(3));
                viajeTaxi.setTiempoFin(rs.getDate(4));
                viajeTaxi.setDireccionInicial(rs.getString(5));
                viajeTaxi.setPuntoInicialGPS(rs.getString(6));
                viajeTaxi.setDireccionDestino(rs.getString(7));
                viajeTaxi.setPuntoFinalGPS(rs.getString(8));
                viajeTaxi.setCancelado(rs.getInt(9));
                viajeTaxi.setIdPago(rs.getInt(10));
                viajeTaxi.setPrecio(rs.getFloat(11));

                listi.add(viajeTaxi);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return listi;
    }

    @Override
    public List<ViajeTaxi> buscarViajeTaxi(ViajeTaxi viajeTaxi) throws Exception {
        return null;
    }

    public ViajeTaxiMYSQLFactoryDAO() {
        this.connection = new util.Connection().getConnection();
    }
}
