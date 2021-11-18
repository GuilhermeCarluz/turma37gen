//atvd 06
programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real d
		real x2, x1, y2, y1
		
		escreva("valor de x1: ")
		leia(x1)
		escreva("valor de x2: ")
		leia(x2)
		escreva("valor de y1: ")
		leia(y1)
		escreva("valor de y2: ")
		leia(y2)

		d = Matematica.arredondar((Matematica.raiz((Matematica.potencia((x2-x1),2)+ Matematica.potencia((y2-y1), 2)),2)),2)

 		escreva("O valor de d é ",d)

		
	
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 378; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */