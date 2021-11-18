package app;

import entities.CadFun;
import entities.Terceiro;

public class TesteFun {

	public static void main(String[] args) {

		CadFun func1 = new CadFun("001", "EPAMINONDAS");
		Terceiro ter1 = new Terceiro("010", "MARIA", 80.00);
		func1.setHorasTrabalhadas(30);
		func1.setValorHora(10.00);
		ter1.setHorasTrabalhadas(40);
		ter1.setValorHora(10.00);

		System.out.println("Sal�rio do funcion�rio " + func1.getNome() + " �: RS$" + func1.calcularSalario());
		System.out.println("Sal�rio do funcion�rio " + ter1.getNome() + " �: RS$" + ter1.calcularSalario());

	}

}
