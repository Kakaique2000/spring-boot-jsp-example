package br.com.kaique.jspcrud.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import br.com.kaique.jspcrud.models.Cachorro;
import lombok.val;

@Service
public class MainService {

	public List<Cachorro> getCachorros() {
		val listaCachorros = new ArrayList<Cachorro>();
		listaCachorros.add(new Cachorro("Dona Mina", "SRD", 1L));
		listaCachorros.add(new Cachorro("Fluck", "Poodle", 10L));
		listaCachorros.add(new Cachorro("Lilica", "Shitzu", 1L));
		listaCachorros.add(new Cachorro("Pretinha", "SRD", 3L));
		return listaCachorros;
	}
	
}
