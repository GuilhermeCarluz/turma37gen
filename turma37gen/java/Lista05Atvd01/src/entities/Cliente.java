package entities;

public class Cliente {

	private String Nome;
	private String Endereco;
	private int Idade;
	private String Genero;
	private String Pagamento;

	public Cliente() {

	}

	public Cliente(String nome, String endereco, int idade, String genero, String pagamento) {

		this.Nome = nome;
		this.Endereco = endereco;
		this.Idade = idade;
		this.Genero = genero;
		this.Pagamento = pagamento;
	}

	public String getNome() {
		return Nome;
	}

	public void setNome(String nome) {
		Nome = nome;
	}

	public String getEndereco() {
		return Endereco;
	}

	public void setEndereco(String endereco) {
		Endereco = endereco;
	}

	public int getIdade() {
		return Idade;
	}

	public void setIdade(int idade) {
		Idade = idade;
	}

	public String getGenero() {
		return Genero;
	}

	public void setGenero(String genero) {
		Genero = genero;
	}

	public String getPagamento() {
		return Pagamento;
	}

	public void setPagamento(String pagamento) {
		Pagamento = pagamento;
	}

	public String toString() {
		return "cliente: " + Nome + ", seu endereco: " + Endereco + ", sua idade: " + Idade
				+ ", essa pessoa se declara: " + Genero + " e a forma de Pagamento escolhida: " + Pagamento;
	}
}
