package dao;

import entity.Unidad;

import java.sql.*;
import java.util.List;

public class UnidadMYSQLFactoryDAO implements UnidadDAO {
    Connection connection;

    public UnidadMYSQLFactoryDAO() {
        this.connection = new util.Connection().getConnection();
    }

    @Override
    public int insertarUnidad(Unidad unidad) throws Exception {
        PreparedStatement ps;
        int valor = 0;
        try {
            ps = this.connection.prepareStatement("INSERT INTO Unidad VALUES (NULL,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            ps.setString(1,unidad.getPlaca());
            ps.setInt(2,unidad.getIdModelo());
            ps.setInt(3,unidad.getFabricacion());
            ps.setInt(4,unidad.getIdConductor());
            ps.setInt(5,unidad.getEstado());


        }catch (SQLException e){
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public int eliminarUnidad(int codigo) throws Exception {
        return 0;
    }

    @Override
    public List<Unidad> listarUnidad() throws Exception {
        return null;
    }

    @Override
    public List<Unidad> buscarUnidad(Unidad unidad) throws Exception {
        return null;
    }
}
