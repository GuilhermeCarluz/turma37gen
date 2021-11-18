package entities;

public class Conta {
//numero, cpf, saldo, conta
	
	private int numero;
	private String Cpf;
	private double saldo;
	private boolean ativo;
	// get = pega a informação
	// set = edita a informação
	
	public Conta (int numero, String Cpf,double saldo, boolean ativo) {
		this.numero=numero;
		this.Cpf=Cpf;
		this.ativo=ativo;
		
	}
	
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getCpf() {
		return Cpf;
	}
	public void setCpf(String cpf) {
		Cpf = cpf;
	}
	public double getSaldo() {
		return saldo;
	}
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
	public boolean isAtiva() {
		return ativo;
	}
	public void setAtiva(boolean ativo) {
		this.ativo = ativo;
	}
	
	
	
	

}
