programa
{
	
	funcao inicio()
	{
		inteiro impar=0, somaImpares=0
		para(inteiro i = 1; i<=500;i++){
			se((i%3)==0){
			somaImpares+=i
			}
		}
		escreva("a soma de todos os multipos de 3 é: " + somaImpares)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */