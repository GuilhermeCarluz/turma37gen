package entities;

public class Aviao {
	
	private String Modelo;
	private String Fabricante;
	private String Companhia;
	private int QtPassageiros;
	private int Preco;
	
	public Aviao(String modelo, String fabricante, String companhia, int qtPassageiros, int preco) {
		
		Modelo = modelo;
		Fabricante = fabricante;
		Companhia = companhia;
		QtPassageiros = qtPassageiros;
		Preco = preco;
	}
	
	
	public String getModelo() {
		return Modelo;
	}
	public void setModelo(String modelo) {
		Modelo = modelo;
	}
	public String getFabricante() {
		return Fabricante;
	}
	public void setFabricante(String fabricante) {
		Fabricante = fabricante;
	}
	public String getCompanhia() {
		return Companhia;
	}
	public void setCompanhia(String companhia) {
		Companhia = companhia;
	}
	public int getQtPassageiros() {
		return QtPassageiros;
	}
	public void setQtPassageiros(int qtPassageiros) {
		QtPassageiros = qtPassageiros;
	}
	public int getPreco() {
		return Preco;
	}
	public void setPreco(int preco) {
		Preco = preco;
	}
	public String toString() {
		return "Aviao [Modelo=" + Modelo + ", Fabricante=" + Fabricante + ", Companhia=" + Companhia
				+ ", QtPassageiros=" + QtPassageiros + ", Preco=" + Preco + "]";
	}

}
