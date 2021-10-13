
package controlador;

import persistencia.ConfigHibernate;

/**
 * @author Cortinez Juan José
 */
public class GestorCliente extends Gestor{
    
    public GestorCliente() {
        sesion = ConfigHibernate.openSession();
    }

}
