//ativdade 02
programa
{
	inclua biblioteca Util
	
	funcao inicio()
	{
		inteiro soma=0, jogadas[10], maior=0, contador=0, totalJogadas=0
		para(inteiro i=0;i<10;i++){
			jogadas[i] = Util.sorteia(1, 6)
			totalJogadas = totalJogadas + jogadas[i]
			se(maior<jogadas[i]){
				maior = jogadas[i]
				
			}
		}
		para(inteiro i=0;i<10;i++){
			escreva("Jogada "+ (i+i) + ": "+jogadas[i]+"\n")
			se(jogadas[i]==maior){
				contador++
			}
		}
		escreva("A média aritmética das jogadas foi: "+(totalJogadas/10)+"\n")
		escreva("A maior pontuação foi: " + maior + " e ela apareceu " + contador + " vezes\n")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 13; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */