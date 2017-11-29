package service;
import entity.Cliente;
import java.util.ArrayList;

public interface ClienteService {
  public abstract Cliente buscarCliente (String userame) throws Exception;
    public abstract ArrayList<Cliente> listarCliente(Cliente cliente) throws Exception;

    public abstract int insertarCliente(Cliente cliente) throws Exception;

    public abstract void modificarCliente(Cliente cliente) throws Exception;
    public  abstract int eliminarConductor(int codigo)throws Exception;

  /*  public abstract boolean validarCliente(String username, String password) throws Exception;
*/
}
