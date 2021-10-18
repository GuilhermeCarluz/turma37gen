package entities;

public class Terceiro extends CadFun{

	private double adicional;

	public Terceiro(String nome, String matricula, double adicional) {
		super(nome, matricula);
		this.adicional = adicional;
	}

	public double getAdicional() {
		return adicional;
	}

	public void setAdicional(double adicional) {
		this.adicional = adicional;
	}
	@Override
	public double calcularSalario() {
		//private = colocando a MÃE no meio SKAKSA
		return (super.getHorasTrabalhadas()*super.getValorHora())+this.adicional;
	}
	
}
