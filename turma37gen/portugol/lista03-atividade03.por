programa
{
	
	funcao inicio()
	{
	
		inteiro finalizar=0, numeros=0, contador=0
		real totalNumeros=0.0
		enquanto(numeros >= 0){
			escreva("escreva um valor (negativo sai): ")
			leia(numeros)
			totalNumeros+=numeros
			contador++
			
		}
		escreva("o total dos valores é: " + (totalNumeros+(numeros*-1) + "\n"))
		escreva("a media dos valores é: " + ((totalNumeros+(numeros*-1))/(contador-1))+ "\n")
		escreva("foram digitados " + (contador -1) + " valores \n")
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