package formularios;

import conection.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/*  @author izelo */
public class UsuarioDb {

    private static final String listado = "SELECT * FROM usuario";
    private static final String agregaUsuario = "INSERT INTO usuario SET usuario=?, password=MD5(?), edad=?";
    private static final String editaUsuario = "UPDATE usuario SET usuario=? WHERE id_usuario=?";
    private static final String editaContraseña ="UPDATE usuario SET password=MD5(?) WHERE id_usuario=?";
    private static final String eliminaUsuario = "DELETE FROM usuario WHERE id_usuario=?";
    private static final String eliminaUsuariov2 = "DELETE FROM usuario WHERE id_usuario=";
    private static final String consultaUsuario = "SELECT * FROM usuario WHERE id_usuario=?";

    //atributos de conexion
    private Connection conexion = new Conexion().getConection();//Metodo getConection() para hacer la conexion con la base de datos.
    private PreparedStatement stmt;
    private ResultSet rs;

    public List<Usuario> ListadoUsuarios() throws SQLException {
        List<Usuario> usuarios = new ArrayList<>(); //Se crea el array de la clase Usuario
        this.stmt = this.conexion.prepareStatement(listado);//Se hace la conexion con la bd por la variable conexion
        this.rs = this.stmt.executeQuery();
        while (this.rs.next()) {
            usuarios.add(new Usuario(this.rs.getInt("id_usuario"), this.rs.getString("usuario"), this.rs.getString("password"), this.rs.getInt("edad")));
        }
        return usuarios;
    }

    public void agregaUsuario(String usuario, String password, int edad) throws SQLException {
        this.stmt = this.conexion.prepareStatement(agregaUsuario);
        this.stmt.setString(1, usuario);
        this.stmt.setString(2, password);
        this.stmt.setInt(3, edad);
        this.stmt.executeUpdate();
    }

    public void editaUsuario(String usuario, int id_usuario) throws SQLException {
        this.stmt = this.conexion.prepareStatement(editaUsuario);
        this.stmt.setString(1, usuario);
        this.stmt.setInt(2, id_usuario);
        this.stmt.executeUpdate();
    }

    public int validaId(int id) throws SQLException {
        String numero = String.valueOf(id);
        if (numero != null) {
            //int id = Integer.parseInt(numero);
            this.stmt = this.conexion.prepareStatement(consultaUsuario);
            this.stmt.setInt(1, id);
            this.rs = this.stmt.executeQuery();
        }
        return id;
    }

    public void eliminarUsuario(int id_usuario) throws SQLException {
        this.stmt = this.conexion.prepareStatement(eliminaUsuario);
        this.stmt.setInt(1, id_usuario);
        this.stmt.executeUpdate();
    }
    
        public void eliminarUsuariov2(int id_usuario) throws SQLException {
        this.stmt = this.conexion.prepareStatement(eliminaUsuariov2 + id_usuario);
        this.stmt.executeUpdate();
    }
}
