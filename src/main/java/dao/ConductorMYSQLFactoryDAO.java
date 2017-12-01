package dao;

import entity.Conductor;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ConductorMYSQLFactoryDAO implements ConductorDAO  {
    private Connection connection = null;

    public  ConductorMYSQLFactoryDAO(){this.connection=new util.Connection().getConnection(); }

    public ConductorMYSQLFactoryDAO() {
        this.connection = new util.Connection().getConnection();
    }

    @Override
    public int insertarConductor(Conductor conductor) throws Exception {
        PreparedStatement ps = null;
        int last = 0;

        try {
            ps = this.connection.prepareStatement("INSERT INTO Conductor VALUES (NULL, ?,?,?,?,?,?)"
                    , Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, conductor.getNombreConductor());
            ps.setString(2, conductor.getApellidoConductor());
            ps.setDate(3, new Date(conductor.getFech_nac().getTime()));
            ps.setString(4, conductor.getLicencia());
            ps.setDate(5, new Date(conductor.getFecha_caducida().getTime()));
            ps.setInt(6, conductor.getTrabajando());

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                last = rs.getInt(1);
            }

            conductor.setIdConductor(last);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        //psmt = connection.prepareStatement("SELECT * FROM usuario WHERE nombre = ?")

        return last;
    }


    @Override
    public List<Conductor> listarConductores() throws Exception {
        Connection connection = null;
        PreparedStatement psmt = null;
        ArrayList<Conductor> listado = new ArrayList<Conductor>();
        Conductor conductor;

        try {
            connection = this.connection;
            psmt = connection.prepareStatement("SELECT * FROM Conductor");
            ResultSet rs = psmt.executeQuery();
            while (rs.next()) {
                conductor = new Conductor();
                conductor.setIdConductor(rs.getInt(1));
                conductor.setNombreConductor(rs.getString(2));
                conductor.setApellidoConductor(rs.getString(3));
                conductor.setFech_nac(rs.getDate(4));
                conductor.setLicencia(rs.getString(5));
                conductor.setFecha_caducida(rs.getDate(6));
                conductor.setTrabajando(rs.getInt(7));

                listado.add(conductor);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return listado;
    }

    @Override
    public int eliminarConductor(int codigo) throws Exception {
        PreparedStatement ps = null;
        int valor;
        try {
            ps = this.connection.prepareStatement("DELETE * FROM Conductor WHERE id = ?");
            ps.setInt(1, codigo);
            valor = ps.executeUpdate();
            if (valor > 0) {
                //el valor se ha eliminado
                return valor;
            } else return 0;

        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    @Override
    public List<Conductor> buscarConductor(Conductor conductor) throws Exception {

        return null;
    }
}
