package dao;

import entity.Cliente;

import java.sql.*;
import java.util.ArrayList;

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
            Connection connection  = null;
            Statement stmt = null;
            PreparedStatement psmt= null;

            Cliente cliente = null;

            try {
                connection = this.connection;

                stmt = connection.createStatement();
                //stmt.executeUpdate("CREATE TABLE IF NOT EXISTS ticks (tick timestamp)");
                //stmt.executeUpdate("INSERT INTO usuario VALUES ('debra','debra',987894)");
                //ResultSet rs = stmt.executeQuery("SELECT * FROM usuario");

                psmt = connection.prepareStatement("SELECT * FROM cliente WHERE nombreCliente = ?");
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
    public ArrayList<Cliente> listarClientes(Cliente cliente) throws SQLException {
        Connection connection  = null;
        Statement stmt = null;
        PreparedStatement psmt= null;

        ArrayList<Cliente> lista = new ArrayList<Cliente>();

        connection = this.connection;

        return null;
    }


        @Override
        public int insertarCliente(Cliente cliente) {
            PreparedStatement ps = null;
            int last = 0;

            try {
                ps = this.connection.prepareStatement("INSERT INTO cliente VALUES (NULL, ?,?,?,?)"
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
        public void modificarCliente(Cliente cliente) {

        }

    @Override
    public int eliminarCliente(int codigo) throws Exception {
        PreparedStatement ps = null;
        int valor;
        try {
            ps = this.connection.prepareStatement("DELETE *, FROM Cliente c  WHERE idCliente = ?");
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


