package util;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Connection {

    private java.sql.Connection connection  = null;

    static final String USER = "root";
    static final String PASS = "megamisama";
    static final String DB_URL = "jdbc:mysql://localhost/taxi_feik";


    public Connection() {

        try {
            //this.connection = DriverManager.getConnection("jdbc:mysql://localhost/test2?user=root&password=megamisama");
            if((System.getenv("CLEARDB_DATABASE_URL") == null)) {
                this.connection = DriverManager.getConnection(DB_URL, USER, PASS);//conexion local
            }else {
                URI dbUri = new URI(System.getenv("CLEARDB_DATABASE_URL"));

                String username = dbUri.getUserInfo().split(":")[0];
                String password = dbUri.getUserInfo().split(":")[1];
                String dbUrl = "jdbc:mysql://" + dbUri.getHost() + dbUri.getPath();

                this.connection = DriverManager.getConnection(dbUrl, username, password);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }

    }

    public void runCreate(String fileName) throws IOException, SQLException {

        ScriptRunner runner = new ScriptRunner(this.connection, false, false);
        Path currentRelativePath = Paths.get("");
        String s = currentRelativePath.toAbsolutePath().toString();
        String file = s+"/src/main/resources/db/"+fileName;
        runner.runScript(new BufferedReader(new FileReader(file)));
    }


    public String getURL(){
        return System.getenv("CLEARDB_DATABASE_URL");
    }

    public java.sql.Connection getConnection(){
        return this.connection;
    }




}
