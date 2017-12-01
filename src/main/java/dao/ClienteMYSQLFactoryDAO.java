package dao;

import entity.Cliente;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClienteMYSQLFactoryDAO implements ClienteDAO {


        private Connection connection  = null;
        private Statement stmt = null;

        public ClienteMYSQLFactoryDAO() {
            this.connection = new util.Connection().getConnection();
        }

      /*  @Override
        public boolean validarCliente(String username, String password) {
            Connection connection  = null;
            PreparedStatement psmt= null;

            try {
                connection = this.connection;
                psmt = connection.prepareStatement("SELECT * FROM cliente WHERE username = ? AND password = ?");
                psmt.setString(1,username);
                psmt.setString(2,password);
                ResultSet rs = psmt.executeQuery();

                if (!rs.next()) {
                    return false;
                }
                else {
                    return true;
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }

            return false;
        }
*/
        @Override
        public Cliente buscarCliente(String nombre) {
            PreparedStatement psmt= null;

            Cliente cliente = null;

            try {
                connection = this.connection;

                psmt = connection.prepareStatement("SELECT * FROM Cliente WHERE nombreCliente = ?");
                psmt.setString(1,nombre);
                ResultSet rs = psmt.executeQuery();

                ArrayList<String> output = new ArrayList<String>();

                while (rs.next()) {
                    //output.add( "Read from DB: " + rs.getTimestamp("tick"));

                    System.out.println(rs.getString(1));

                    cliente =  new Cliente();
                    cliente.setNombreCliente(rs.getString(1));
                    cliente.setApellidoCliente(rs.getString(2));
                    cliente.setEmail(rs.getString(3));
                    cliente.setTelefono(rs.getString(4));
                }

            } catch (SQLException e) {
                e.printStackTrace();
            }finally {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

            return cliente;
        }

    @Override
    public ArrayList<Cliente> listarClientes() throws SQLException {
        PreparedStatement psmt;
        Cliente cliente;

        ArrayList<Cliente> listado = new ArrayList<>();
        try {
            psmt = this.connection.prepareStatement("SELECT * FROM Cliente");

            ResultSet rs = psmt.executeQuery();

            while (rs.next()){
                cliente = new Cliente();
                cliente.setId_cliente(rs.getInt(1));
                cliente.setNombreCliente(rs.getString(2));
                cliente.setApellidoCliente(rs.getString(3));
                cliente.setEmail(rs.getString(4));
                cliente.setTelefono(rs.getString(5));

                listado.add(cliente);
            }

        }
        catch (SQLException e){
            e.printStackTrace();
        }

        return listado;
    }


        @Override
        public int insertarCliente(Cliente cliente) {
            PreparedStatement ps;
            int last = 0;

            try {
                ps = this.connection.prepareStatement("INSERT INTO Cliente VALUES (NULL, ?,?,?,?)"
                        , Statement.RETURN_GENERATED_KEYS);
                ps.setString(1,cliente.getNombreCliente());
                ps.setString(2,cliente.getApellidoCliente());
                ps.setString(3,cliente.getEmail());
                ps.setString(4,cliente.getTelefono());

                ps.executeUpdate();

                ResultSet rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    last = rs.getInt(1);
                }
                System.out.println(last);
                cliente.setId_cliente(last);

            } catch (SQLException e) {
                e.printStackTrace();
            }

            //psmt = connection.prepareStatement("SELECT * FROM usuario WHERE nombre = ?")

            return last;

        }

    @Override
    public int modificarCliente(Cliente cliente) throws Exception {
        PreparedStatement ps;

        int resp;
        try {
            ps = this.connection.prepareStatement("UPDATE Cliente SET nombreCliente = ? , apellidoCliente = ? , email = ? , telefono = ? WHERE Cliente.idCliente = ?");
            ps.setInt(1,cliente.getId_cliente());
            ps.setString(2,cliente.getNombreCliente());
            ps.setString(3,cliente.getApellidoCliente());
            ps.setString(4,cliente.getEmail());
            ps.setString(5,cliente.getTelefono());

            resp = ps.executeUpdate();

            if (resp>0)
                return resp;
            return 0;
        }
        catch (SQLException e){
            e.printStackTrace();
            return -1;
        }
    }

    @Override
    public int eliminarCliente(int codigo) throws Exception {
        PreparedStatement ps;
        int valor;
        try {
            ps = this.connection.prepareStatement("DELETE * FROM Cliente c WHERE c.idCliente = ?");
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

}