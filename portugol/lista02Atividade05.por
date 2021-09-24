programa
{
	
	funcao inicio()
	{
		real indice
		escreva("Indique o índice de poluição: ")
		leia(indice)

		se(indice<=0.25){
			escreva("Os índices estão aceitáveis.")
		}
		senao se(indice>0.25 e indice<0.3){
			escreva("Indíce de poluição aceitável.")
		}
		senao se(indice>=0.3 e indice<0.4){
			escreva("O grupo 1 não pode continuar com as atividades.")
		}
		senao se(indice>=0.4 e indice<0.5){
			escreva("Os grupos 1 e 2 não podem continuar com as atividades.")
		}
		senao {
			escreva("Todas os grupos não podem continuar com as atividades.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 333; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */