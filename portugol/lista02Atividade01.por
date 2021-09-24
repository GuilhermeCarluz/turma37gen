programa
{
	
	funcao inicio()
	{		
		real P, E, M		
		
			escreva("Digite o peso de tomates : ")
			leia(P)			
	
		se (P>50.00){
			E =(P - 50.00)
			M = E * 4.00
			escreva("A multa foi de " , M , " reais")
		}
		senao {
			E = 0.0
			M = 0.0
			escreva("O peso não passa de 50 quilos, o peso em excesso é " , E , " e o valo da multa é " , M)		
		}
		
		


		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */