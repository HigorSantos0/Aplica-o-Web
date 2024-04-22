package model;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Parque {
    private String nome;
    private List<Atracao> atracoes;

    public Parque(String nome) {
        this.nome = nome;
        this.atracoes = new ArrayList<>();
    }


    // getters e setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public List<Atracao> getAtracoes() {
        return atracoes;
    }

    public void setAtracoes(List<Atracao> atracoes) {
        this.atracoes = atracoes;
    }

    public void addAtracao(Atracao atracao) {
        this.atracoes.add(atracao);
    }

	@Override
	public String toString() {
		return "Parque [nome=" + nome + ", atracoes=" + atracoes + "]";
	}
    
  
}
