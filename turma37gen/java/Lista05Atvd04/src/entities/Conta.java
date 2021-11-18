package entities;

public class Conta {
	public String Nome;
	public String Agencia;
	public String Cpf;
	public double Saldo = 5000;
	public boolean Ativo;

	public double saque(double valorSaque) {
		return Saldo - valorSaque;
	}

	public double deposito(double valorDeposito) {
		return Saldo + valorDeposito;
	}

	public String toString() {
		return "Nome= " + Nome + ", Agencia= " + Agencia + ", Cpf= " + Cpf + ", Saldo da conta= " + Saldo + " Ativo= "
				+ Ativo;
	}
}
