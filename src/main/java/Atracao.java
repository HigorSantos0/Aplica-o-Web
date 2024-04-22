package model;

public class Atracao {
    private String nome;
    private String tipo;
    private double preco;

    public Atracao(String nome, String tipo, double preco) {
        this.nome = nome;
        this.tipo = tipo;
        this.preco = preco;
    }

    // getters e setters
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public double getPreco() {
        return preco;
    }

    public void setPreco(double preco) {
        this.preco = preco;
    }

	@Override
	public String toString() {
		return "Atracao [nome=" + nome + ", tipo=" + tipo + ", preco=" + preco + "]";
	}
    
}
