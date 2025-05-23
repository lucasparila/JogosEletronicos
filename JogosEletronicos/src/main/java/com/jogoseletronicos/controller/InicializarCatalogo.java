package com.jogoseletronicos.controller;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import com.jogoseletronicos.model.*;

@WebListener
public class InicializarCatalogo implements ServletContextListener  {
	
	@Override
    public void contextInitialized(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        DAO.inicializarCatalogo(context);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Aplicação finalizada.");
    }
}
