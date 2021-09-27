programa
{
	
	funcao inicio()
	{
		inteiro quantidadeHabitantes=0, salario=0,  quantidadeFilhos=0, maiorSalario=0
		real percentual=0.0, totalSalario=0.0, totalFilhos=0.0
		escreva("Quantas pessoas participarão da pesquisa: ")
		leia(quantidadeHabitantes)

		para(inteiro i=0; i<quantidadeHabitantes; i++){
			escreva("Qual o salário do cidadão " + (i+1) +": ")
			leia(salario)
			totalSalario+=salario
			escreva("Quantos filhos tem o cidadão " + (i+1)+": ")
			leia(quantidadeFilhos)
			totalFilhos+=quantidadeFilhos
			se(salario > maiorSalario){
				maiorSalario = salario
			}
			se(salario<=100){
				percentual++
			}	
		}
		escreva("A média salarial da população é: " + (totalSalario/quantidadeHabitantes)+"\n")
		escreva("A média de filhos da população é: " + (totalFilhos/quantidadeHabitantes)+"\n")
		escreva("O maior salário é: "+ maiorSalario+"\n")
		escreva("Quantidade de pessoas que ganham até 100R$ é de "+ ((percentual*100)/quantidadeHabitantes)+"%\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */