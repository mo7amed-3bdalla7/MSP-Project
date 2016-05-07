package com.m7md.models;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import java.math.BigInteger;
import java.util.List;

/**
 * Created by m7md on 4/25/16.
 */
public class HibernateImpl {
    private static final SessionFactory ourSessionFactory;
    private static final ServiceRegistry serviceRegistry;

    static {
        try {
            Configuration configuration = new Configuration();
            configuration.configure();

            serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();
            ourSessionFactory = configuration.buildSessionFactory(serviceRegistry);
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static Session getSession() throws HibernateException {
        return ourSessionFactory.openSession();
    }

    /**
     * @param session supply it with the current session
     * @return The Last Inserted Row Id.
     */
    public static BigInteger getLastId(Session session) {
        return (BigInteger) session.createSQLQuery("SELECT LAST_INSERT_ID()")
                .uniqueResult();
    }

    /**
     * @param entity The table type
     * @param <T>
     * @return The Last Inserted Row Id
     */
    public static <T> BigInteger insert(T entity) {

        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        session.save(entity);
        transaction.commit();

        BigInteger lastId = getLastId(session);
        session.close();
        return lastId;

    }

    /**
     * @param <T> to specify the return type
     * @param entity The table type
     * @return The List of Rows In The Parameter Entity
     */
    public static <T> List<T> fetchRows(String entity) {

        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        List<T> data = session.createQuery("from " + entity).list();
        transaction.commit();
        session.close();
        return data;

    }

}
