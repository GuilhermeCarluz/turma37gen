package entities;

public class Eletronico {
	private String Modelo;
	private int Preco;
	private int Geracao;
	private String Marca;

	public Eletronico(String modelo, int preco, int geracao, String marca) {

		Modelo = modelo;
		Preco = preco;
		Geracao = geracao;
		Marca = marca;
		
	}
	public String getModelo() {
		return Modelo;
	}
	public void setModelo(String modelo) {
		Modelo = modelo;
	}
	public int getPreco() {
		return Preco;
	}
	public void setPreco(int preco) {
		Preco = preco;
	}
	public int getGeracao() {
		return Geracao;
	}
	public void setGeracao(int geracao) {
		Geracao = geracao;
	}
	public String getMarca() {
		return Marca;
	}
	public void setMarca(String marca) {
		Marca = marca;
	}
	public int somaValores(int valor1, int valor2) {
		int soma = valor1 + valor2;
		return soma;
	}

	
	public String toString() {
		return "O Modelo= " + 
				Modelo + ", Preco= " + 
				Preco + ", Geracao= " + Geracao + 
				" e a Marca=" + Marca  ;
	}

}
