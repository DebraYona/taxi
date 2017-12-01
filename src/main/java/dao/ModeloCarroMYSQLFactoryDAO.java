package dao;

import entity.Estado;
import entity.ModeloCarro;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ModeloCarroMYSQLFactoryDAO implements ModeloCarroDAO{
    private Connection connection = null;
    private Statement stmt = null;

    public ModeloCarroMYSQLFactoryDAO() {
        this.connection = new util.Connection().getConnection();
    }

    @Override
    public int insertarModelo(ModeloCarro modelo) throws Exception {
        PreparedStatement ps = null;
        int last = 0;

        try {
            ps = this.connection.prepareStatement("INSERT INTO ModeloCarro VALUES (NULL,?,?)"
                    , Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, modelo.getNombreModelo());
            ps.setString(2, modelo.getDescripcionModelo());



            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                last = rs.getInt(1);
            }

            modelo.setIdModelo(last);

        } catch (SQLException e) {
            e.printStackTrace();
        }


        //psmt = connection.prepareStatement("SELECT * FROM usuario WHERE nombre = ?")

        return last;
    }

    @Override
    public List<ModeloCarro> listarModelo() throws Exception {
        Connection connection = null;
        PreparedStatement psmt = null;
        ArrayList<ModeloCarro> listado = new ArrayList<ModeloCarro>();


        try {
            connection = this.connection;
            psmt = connection.prepareStatement("SELECT * FROM ModeloCarro");
            ResultSet rs = psmt.executeQuery();
            while (rs.next()) {
                ModeloCarro modelo = new ModeloCarro();
                modelo.setIdModelo(rs.getInt(1));
                modelo.setNombreModelo(rs.getString(2));
                modelo.setDescripcionModelo(rs.getString(3));


                listado.add(modelo);

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
    public int eliminarModelo(int codigo) throws Exception {
        PreparedStatement ps = null;
        int valor;
        try {
            ps = this.connection.prepareStatement("DELETE  FROM ModeloCarro WHERE id = ?");
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
    public List<ModeloCarro> buscarModelo(ModeloCarro modelo) throws Exception {
        return null;
    }
}
