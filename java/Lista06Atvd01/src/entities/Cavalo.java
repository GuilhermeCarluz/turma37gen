package entities;

public class Cavalo extends Animal{
	
	public Cavalo(String nome, int idade) {
		super(nome, idade);
	}

	@Override
	public String habilidade() {
		return "CORREEEEE!!!";
	}
	
	@Override
	public String som() {
		return "ihihihih";	
	}

}
