//atividade 01.
programa
{
	
	funcao inicio()
	{
		inteiro numero[5]
		inteiro maior=0

		para (inteiro i=0; i<5; i++){
		escreva("Digite um valor : ")
		leia(numero[i])
			se (numero[i]>maior){
				maior = numero[i]
			}	
		}
		para(inteiro i=0;i<5;i++){
			escreva(numero[i] + "\n")
		}
		escreva("O maior número é: "+maior)
	}
}
/*
 * Faça um programa que crie um vetor por leitura com 5 valores de pontuação de uma atividade e o escreva em seguida. 
 * Encontre após a maior pontuação e a apresente. 
 */
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 15; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 7, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */