package br.com.kaique.jspcrud.models;

import lombok.Data;

public @Data class Cachorro {
	
	private String nome;
	private String raca;
	private Long idade;
	
	public Cachorro(String nome, String raca, Long idade) {
		super();
		this.nome = nome;
		this.raca = raca;
		this.idade = idade;
	}
	
	

}
