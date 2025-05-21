package com.jogoseletronicos.model;

import java.util.ArrayList;

import javax.servlet.ServletContext;

public class UsuarioDAO {
	
	private static final String ATRIBUTO = "listaUsuarios";
	
	@SuppressWarnings("unchecked")
	private static ArrayList<Usuario> getListaUsuarios(ServletContext context) {
        ArrayList<Usuario> usuarios = (ArrayList<Usuario>) context.getAttribute(ATRIBUTO);
        if (usuarios == null) {
            usuarios = new ArrayList<>();
            context.setAttribute(ATRIBUTO, usuarios);
        }
        return usuarios;
    }
	
	public static void adicionarUsuario(Usuario usuario, ServletContext context) {
		ArrayList <Usuario> usuarios = getListaUsuarios(context);
		usuarios.add(usuario);
	}
	
	public static Usuario getUsuario(String username, ServletContext context) {
		ArrayList<Usuario> usuarios = getListaUsuarios(context);
		for(Usuario u : usuarios) {
			if(u.getUsername().equals(username)) {
				return u;
			}
		}
		
		return null;
	}
	
	public static boolean validarSenha(Usuario usuario, String senha, ServletContext context) {
		
		if(usuario.getSenha().equals(senha)) {
			return true;
		}
		
		return false;
	}
}
