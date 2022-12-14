package hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class pruebaDAO {
	private StandardServiceRegistry sr ;
	private SessionFactory sf;
	private Session session;
	
	public pruebaDAO() {
		sr = new StandardServiceRegistryBuilder().configure().build();
		sf = new MetadataSources(sr).buildMetadata().buildSessionFactory();
		session = sf.openSession();
	}

	//metodo que añade el nombre
	public void add(prueba p) {
		session.getTransaction().begin();
		session.save(p);
		session.getTransaction().commit();
	}
	
	//metodo que lee el nombre
	public void read(int id) {
		prueba p = (prueba) session.get(prueba.class,id);
		System.out.println("El nombre es: " + p.getNombre());
	}
	
	//metodo que borra
	public void delete(int id) {
		prueba p = (prueba) session.get(prueba.class,id);
		session.getTransaction().begin();
		session.delete(p);
		session.getTransaction().commit();
	}
	
	//metodo que modifica
	public void update(int id,String newName) {
		prueba p = (prueba) session.get(prueba.class,id);
		p.setNombre(newName);
		session.getTransaction().begin();
		session.update(p);
		session.getTransaction().commit();
	}

}
