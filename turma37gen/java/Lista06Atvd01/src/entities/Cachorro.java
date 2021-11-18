package entities;

public class Cachorro extends Animal{
	
	public Cachorro(String nome, int idade) {
		super(nome, idade);
	}
	
	@Override
	public String habilidade() {
		return "CORREEEEE!!!";
	}
	
	@Override
	public String som() {
		return "auauauaua";
	}
}
