package com.jogoseletronicos.model;
import java.util.ArrayList;

import javax.servlet.ServletContext;

public class DAO {
	
	private static final String ATRIBUTO = "catalogoJogos";
	
	@SuppressWarnings("unchecked")
	private static ArrayList<Jogo> getLista(ServletContext context) {
        ArrayList<Jogo> jogos = (ArrayList<Jogo>) context.getAttribute(ATRIBUTO);
        if (jogos == null) {
            jogos = new ArrayList<>();
            context.setAttribute(ATRIBUTO, jogos);
        }
        return jogos;
    }
	
	public static void inicializarCatalogo(ServletContext context) {
	    @SuppressWarnings("unchecked")
	    ArrayList<Jogo> catalogo = (ArrayList<Jogo>) context.getAttribute("catalogoGeral");

	    if (catalogo != null && !catalogo.isEmpty()) return;

	    catalogo = new ArrayList<>();

	    catalogo.add(new Jogo("The Last of Us", "Naughty Dog", "2013", "Ação", 
	        "Jogo de sobrevivência em mundo pós-apocalíptico", "Inglês", "PlayStation", "18", "imagens/tlou.jpg"));

	    catalogo.add(new Jogo("Hollow Knight", "Team Cherry", "2017", "Aventura", 
	        "Jogo indie de exploração em 2D", "Português", "PC", "10", "imagens/hollow_knight.jpg"));

	    catalogo.add(new Jogo("God of War", "Santa Monica Studio", "2018", "Ação", 
	        "Kratos e seu filho em uma jornada épica", "Português", "PlayStation", "18", "imagens/gow.jpg"));

	    catalogo.add(new Jogo("Stardew Valley", "ConcernedApe", "2016", "Simulação", 
	        "Vida em uma fazenda", "Português", "PC", "0", "imagens/stardew.jpg"));

	    catalogo.add(new Jogo("Elden Ring", "FromSoftware", "2022", "RPG", 
	        "Mundo aberto sombrio", "Inglês", "PC", "18", "imagens/elden_ring.jpg"));
	    catalogo.add(new Jogo("Red Dead Redemption 2", "Rockstar Games", "2018", "Ação/Aventura",
	    	    "Uma jornada no Velho Oeste com narrativa intensa e mundo aberto realista.",
	    	    "Português", "PlayStation, Xbox, PC", "18", "imagens/rdr2.jpg"));

	    	catalogo.add(new Jogo("Celeste", "Matt Makes Games", "2018", "Plataforma",
	    	    "Ajude Madeline a escalar a montanha Celeste enfrentando desafios e descobrindo sua força interior.",
	    	    "Português", "PC, Switch, PlayStation, Xbox", "10", "imagens/celeste.jpg"));

	    	catalogo.add(new Jogo("Minecraft", "Mojang Studios", "2011", "Sandbox",
	    	    "Jogo de construção e sobrevivência com blocos em um mundo infinito gerado proceduralmente.",
	    	    "Português", "PC, Consoles, Mobile", "Livre", "imagens/minecraft.jpg"));

	    	catalogo.add(new Jogo("The Witcher 3: Wild Hunt", "CD Projekt Red", "2015", "RPG",
	    	    "Acompanhe Geralt de Rívia em uma missão épica em um vasto mundo aberto.",
	    	    "Português", "PC, PlayStation, Xbox, Switch", "18", "imagens/witcher3.jpg"));

	    	catalogo.add(new Jogo("Animal Crossing: New Horizons", "Nintendo", "2020", "Simulação",
	    	    "Crie sua ilha do zero, decore e interaja com vizinhos carismáticos.",
	    	    "Português", "Nintendo Switch", "Livre", "imagens/animal_crossing.jpg"));

	    	catalogo.add(new Jogo("Hades", "Supergiant Games", "2020", "Ação/Roguelike",
	    	    "Escape do Submundo como Zagreus, filho de Hades, enfrentando desafios mitológicos.",
	    	    "Português", "PC, Switch, PlayStation, Xbox", "14", "imagens/hades.jpg"));

	    	catalogo.add(new Jogo("Super Mario Odyssey", "Nintendo", "2017", "Plataforma",
	    	    "Mario viaja por mundos diferentes com a ajuda de seu chapéu mágico, Cappy.",
	    	    "Português", "Nintendo Switch", "Livre", "imagens/mario_odyssey.jpg"));

	    	catalogo.add(new Jogo("Cyberpunk 2077", "CD Projekt Red", "2020", "RPG/Ação",
	    	    "Explore uma metrópole futurista como um mercenário cibernético em busca de imortalidade.",
	    	    "Português", "PC, PlayStation, Xbox", "18", "imagens/cyberpunk.jpg"));

	    	catalogo.add(new Jogo("Cuphead", "Studio MDHR", "2017", "Plataforma/Tiro",
	    	    "Desafios intensos em estilo cartoon dos anos 30 com animação desenhada à mão.",
	    	    "Português", "PC, Switch, PlayStation, Xbox", "10", "imagens/cuphead.jpg"));

	    	catalogo.add(new Jogo("It Takes Two", "Hazelight Studios", "2021", "Aventura/Cooperativo",
	    	    "Jogo cooperativo onde dois personagens enfrentam desafios emocionais e puzzles criativos.",
	    	    "Português", "PC, PlayStation, Xbox", "12", "imagens/it_takes_two.jpg"));

	    context.setAttribute("catalogoGeral", catalogo);
	}

	
	public static ArrayList<Jogo> getJogos(ServletContext context){
		return getLista(context);
	}
	
	public static Jogo buscarJogoNome(String nome, ServletContext context) {
		ArrayList<Jogo> jogos = getLista(context);
		for(Jogo j : jogos) {
			if(j.getTitulo().equals(nome)) {
				return j;
			}
		}
		return null;
	}
	
	public static void adicionarJogo(Jogo jogo, ServletContext context) {
		ArrayList <Jogo> jogos = getLista(context);
		jogos.add(jogo);
	}
	
	public static void removerJogo (Jogo jogo, ServletContext context) {
		ArrayList<Jogo> jogos = getLista(context);
		jogos.remove(jogo);
	}
	
	public static void atualizarJogo(Jogo jogoAtualizado, ServletContext context) {
		Jogo jogo = buscarJogoNome(jogoAtualizado.getTitulo(), context); 
		if(jogo != null) {
			jogo.setTitulo(jogoAtualizado.getTitulo());
			jogo.setDesenvolvedor(jogoAtualizado.getDesenvolvedor());
			jogo.setAnoLancamento(jogoAtualizado.getAnoLancamento());
			jogo.setGenero(jogoAtualizado.getGenero());
			jogo.setSinopse(jogoAtualizado.getSinopse());
			jogo.setIdioma(jogoAtualizado.getIdioma());
			jogo.setPlataforma(jogoAtualizado.getPlataforma());
			jogo.setClassificacaoIndicativa(jogoAtualizado.getClassificacaoIndicativa());
		}
	}
}
