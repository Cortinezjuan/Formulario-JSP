
package modelo;

import java.io.Serializable;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.MappedSuperclass;

/**
 * @author Cortinez Juan José
 */
@MappedSuperclass// clase padre de las entidades
@Inheritance(strategy = InheritanceType.JOINED)// joined: crea 2 tablas unidas por id
                                                // singletable: 1 tabla con todos los atributos de las demas
                                                // txclass: copia los atributos del padre=redundancia
public class EntityBean implements Serializable{
    protected Long id;

    @Id
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public static String getIdentityPropery() {
        return "id";
    }

}
