package Controller;

import Config.Conexion;
import Entidad.Persona;
import static java.awt.SystemColor.text;
import java.util.List;
import javafx.scene.control.Alert;
import javax.servlet.http.HttpServletRequest;
import javax.swing.JDialog;
import javax.swing.JOptionPane;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int id;
    List datos;

    @RequestMapping("index.htm")
    public ModelAndView Listar() {
        String sql = "select * from t_empleado";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;

    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar() {
        mav.addObject(new Persona());
        mav.setViewName("agregar");
        return mav;
    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Persona p) {
        String sql = "insert into t_empleado(usuario_empleado, contrasena_empleado, cargo_empleado)values(?,?,?)";
        this.jdbcTemplate.update(sql, p.getNom(), p.getNdoc(), p.getCargo());
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping(value = "editar.htm", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "select * from t_empleado where id_empleado=" + id;
        datos = datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("editar");
        return mav;

    }

    @RequestMapping(value = "editar.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Persona p) {
        String sql = "update t_empleado set usuario_empleado=?,contrasena_empleado=?,cargo_empleado=? where id_empleado=" + id;
        this.jdbcTemplate.update(sql, p.getNom(), p.getNdoc(), p.getCargo());
        return new ModelAndView("redirect:/index.htm");
    }

    @RequestMapping("delete.htm")
    public ModelAndView Delete(HttpServletRequest request) {
        id = Integer.parseInt(request.getParameter("id"));
        String sql = "delete from t_empleado where id_empleado=" + id;        
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");

    }
    /*JOptionPane optionPane = new JOptionPane(JOptionPane.WARNING_MESSAGE);
    JDialog dialog = optionPane.createDialog("Warning!");*/

}
