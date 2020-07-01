package formularios;

/* @author izelo */
public class Usuario {

    private int idUsuario;
    private String usuario;
    private String password;
    private int edad;

    public Usuario() {
    }

    public Usuario(int idUsuario, String usuario, String password, int edad) {
        this.idUsuario = idUsuario;
        this.usuario = usuario;
        this.password = password;
        this.edad = edad;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    @Override
    public String toString() {
        return "Usuario{" + "idUsuario=" + idUsuario + ", usuario=" + usuario + ", password=" + password + ", edad=" + edad + '}';
    }
    
}
