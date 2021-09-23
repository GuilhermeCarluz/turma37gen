programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio()
	{
		cadeia nome
		real farenheit, celsius
		real arredondar
		escreva("Qual o seu nome: ")
		leia(nome)
		escreva("Qual é a temperatura em F°")
		leia(farenheit)
		celsius = (farenheit-32)/1.8
		farenheit = (celsius*1.8)+32
		arredondar = mat.arredondar(celsius, 2)
		escreva("A temperatura em C° é de ",celsius)
		escreva("\n", arredondar)
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 401; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */