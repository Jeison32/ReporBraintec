
package Entidad;

public class Persona {
    int id;
    String nom;
    String ndoc;
    String cargo;

    public Persona() {
    }

    public Persona(int id, String nom, String ndoc, String cargo) {
        this.id = id;
        this.nom = nom;
        this.ndoc = ndoc;
        this.cargo = cargo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getNdoc() {
        return ndoc;
    }

    public void setNdoc(String ndoc) {
        this.ndoc = ndoc;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    
}
