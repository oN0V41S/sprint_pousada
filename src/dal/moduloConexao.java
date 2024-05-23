package dal;
/* Importando Pacotes */
import java.sql.*;
import javax.swing.*;

public class moduloConexao {
       
    public static Connection conector(){
        /* Iniciando Variável de conexão */
        Connection conexao = null;
        
        /* Parâmetros de Conexão com Banco */
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/pousada";
        
        /* Autenticação do Banco */
        String user = "root";
        String password = "";
        
        /* Bloco de tentativa de conexão */
        try{
            Class.forName(driver);
            conexao = DriverManager.getConnection(url, user, password);
            return conexao;
        }catch(Exception erro){
            JOptionPane.showMessageDialog(null,"Ocorreu um Erro Ao tentar se conectar com Banco de dados!!");
            System.exit(0);
            return null;
        }
    }
}
