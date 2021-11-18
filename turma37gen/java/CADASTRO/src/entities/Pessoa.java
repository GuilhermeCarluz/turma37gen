package entities;

public class Pessoa {

	@Override
	public String toString() {
		return "Pessoa nome=" + nome + ", anoNascimento=" + anoNascimento + ", viva=" + viva + ", email=" + email
				+ ", pronome=" + pronome + ", calcularIdade()=" + calcularIdade();
	}
	//atributos o que objeto é, tem, ou estar
	public String nome;
	public int anoNascimento;
	public boolean viva;
	public String email;
	public char pronome;
	
	
	//metodo
	public int calcularIdade() {
		return 2021-anoNascimento;
	}
	public int calcularIdade(int anoAtual) {
		return anoAtual-anoNascimento;
	}
}
