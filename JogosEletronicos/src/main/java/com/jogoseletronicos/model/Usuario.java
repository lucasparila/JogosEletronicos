package com.jogoseletronicos.model;

public class Usuario {

		private String nome;
		private String email;
		private String dataNascimento;
		private String username;
		private String senha;
		
		public Usuario(String nome, String email, String dataNascimento, String username, String senha) {
			this.nome = nome;
			this.email = email;
			this.dataNascimento = dataNascimento;
			this.username = username;
			this.senha = senha;
		}

		public String getNome() {
			return nome;
		}

		public void setNome(String nome) {
			this.nome = nome;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getDataNascimento() {
			return dataNascimento;
		}

		public void setDataNascimento(String dataNascimento) {
			this.dataNascimento = dataNascimento;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}

		public String getSenha() {
			return senha;
		}

		public void setSenha(String senha) {
			this.senha = senha;
		}
		
		
		
		
}
