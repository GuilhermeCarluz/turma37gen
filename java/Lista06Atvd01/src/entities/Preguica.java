package entities;

public class Preguica extends Animal {

	public Preguica(String nome, int idade) {
		super(nome, idade);
		
	}

	@Override
	public String habilidade() {
		return "SOBE EM ARVORES!!!";
	}
	
	@Override
	public String som() {
		return "zzzzzzzzz";
	}

}
