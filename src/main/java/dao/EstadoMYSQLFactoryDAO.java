package dao;

import entity.Conductor;
import entity.Estado;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EstadoMYSQLFactoryDAO implements EstadoDAO {

    private Connection connection = null;
    private Statement stmt = null;

    public EstadoMYSQLFactoryDAO() {
        this.connection = new util.Connection().getConnection();
    }
    @Override
    public int insertarEstado(Estado estado) throws Exception {
        PreparedStatement ps = null;
        int last = 0;

        try {
            ps = this.connection.prepareStatement("INSERT INTO Estado VALUES (NULL,?)"
                    , Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, estado.getNombreEstado());



            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                last = rs.getInt(1);
            }

            estado.setEstado(last);

        } catch (SQLException e) {
            e.printStackTrace();
        }


        //psmt = connection.prepareStatement("SELECT * FROM usuario WHERE nombre = ?")

        return last;
    }

    @Override
    public List<Estado> listarEstado() throws Exception {
        Connection connection = null;
        PreparedStatement psmt = null;
        ArrayList<Estado> listado = new ArrayList<Estado>();


        try {
            connection = this.connection;
            psmt = connection.prepareStatement("SELECT * FROM Estado");
            ResultSet rs = psmt.executeQuery();
            while (rs.next()) {
                Estado estado = new Estado();
                estado.setEstado(rs.getInt(1));
                estado.setNombreEstado(rs.getString(2));


                listado.add(estado);

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
    public int eliminarEstado(int codigo) throws Exception {
        PreparedStatement ps = null;
        int valor;
        try {
            ps = this.connection.prepareStatement("DELETE  FROM Estado WHERE id = ?");
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
    public List<Estado> buscarEstado(Estado estado) throws Exception {
        return null;
    }


}
