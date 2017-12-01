package dao;

import entity.TipoPago;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TipoPagoMYSQLFactoryDAO implements TipoPagoDAO {
    private Connection connection = null;
    private Statement stmt = null;

    public TipoPagoMYSQLFactoryDAO() {
        this.connection = new util.Connection().getConnection();
    }
    @Override
    public int insertarTipo(TipoPago tipoPago) throws Exception {
        PreparedStatement ps = null;
        int last = 0;

        try {
            ps = this.connection.prepareStatement("INSERT INTO TipoPago VALUES (NULL,?)"
                    , Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, tipoPago.getNombreTipo());




            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                last = rs.getInt(1);
            }

            tipoPago.setIdTipo(last);

        } catch (SQLException e) {
            e.printStackTrace();
        }


        //psmt = connection.prepareStatement("SELECT * FROM usuario WHERE nombre = ?")

        return last;
    }

    @Override
    public List<TipoPago> listarTipo() throws Exception {
        Connection connection = null;
        PreparedStatement psmt = null;
        ArrayList<TipoPago> listado = new ArrayList<TipoPago>();


        try {
            connection = this.connection;
            psmt = connection.prepareStatement("SELECT * FROM TipoPago");
            ResultSet rs = psmt.executeQuery();
            while (rs.next()) {
                TipoPago tipoPago = new TipoPago();
                tipoPago.setIdTipo(rs.getInt(1));
                tipoPago.setNombreTipo(rs.getString(2));



                listado.add(tipoPago);

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
    public int eliminarTipo(int codigo) throws Exception {
        PreparedStatement ps = null;
        int valor;
        try {
            ps = this.connection.prepareStatement("DELETE  FROM TipoPago WHERE id = ?");
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
    public List<TipoPago> buscarTipo(TipoPago tipoPago) throws Exception {
        return null;
    }
}
