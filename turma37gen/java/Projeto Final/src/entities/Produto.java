package entities;

public class Produto {
	// ATRIBUTOS
	private String produto;
	private String codigo;
	private double valor;
	private int estoque;

	// CONSTRUTORES
	public Produto(String produto, String codigo, double valor, int estoque) {
		super();
		this.produto = produto;
		this.codigo = codigo;
		this.valor = valor;
		if (estoque < 0) {
			this.estoque = 0;
		} else {
			this.estoque = estoque;
		}
	}

	// ENCAOSULAMENTO
	public String getProduto() {
		return produto;
	}

	public void setProduto(String produto) {
		this.produto = produto;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public int getEstoque() {
		return estoque;
	}

	public void setEstoque(int estoque) {
		this.estoque = estoque;
	}

	// MÉTODOS

	public void incluiEstoque(int quantidade) {
		if (quantidade < 0) {
			System.out.println("Quantidade negativa! Impossível realizar!");
		} else {
			this.estoque = this.estoque + quantidade;
		}
	}

	public void retiraEstoque(int quantidade) {
		if (quantidade > estoque) {
			System.out.println("Quantidade indisponivel");
		} else {
			this.estoque = this.estoque - quantidade;
		}
	}
}
