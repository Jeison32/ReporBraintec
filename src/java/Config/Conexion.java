
package Config;

import java.sql.DriverManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


public class Conexion {
    public DriverManagerDataSource Conectar (){
        DriverManagerDataSource dataSource=new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/bdbraintec");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        return dataSource;
    }
    
}
