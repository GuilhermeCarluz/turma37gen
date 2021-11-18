programa
{
	
	funcao inicio()
	{
		inteiro numero

		escreva("Digite um valor: ")
		leia(numero)

		se (numero == 0){
			escreva(numero, " é um número neutro")
		}
		
		se(numero<0 e numero%2==0){
			escreva("Esse número é par e negativo")
			
		}
		senao se(numero>0 e numero%2==0){
			escreva("Esse número é par e positivo")
		}
		senao se(numero%2 !=0 e numero<0){
			escreva("Esse número é impar e negativo")
		}
		senao{
			escreva("Esse número é impar e positivo")
		}
		

		
		}
			
		
		
		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 478; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */