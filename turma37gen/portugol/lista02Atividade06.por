programa
{
	
	funcao inicio()
	{
		inteiro idade
		escreva("Digite sua idade: ")
		leia(idade)

		se(idade <=0){
			escreva("Sua idade é nula")
		}
		
		se(idade >=1 e idade <=4){
			escreva("Você não pertence a uma categoria")		
		}
		senao se(idade >=5 e idade <=7){
			escreva("Você está na categoria 'Infantil A'")
		}
		senao se(idade >=8 e idade <=11){
			escreva("Você está na categoria 'Infantil B'")
		}
		senao se(idade >=12 e idade <=13){
			escreva("Você está na categoria 'Juvenil A'")
		}
		senao se(idade >=14 e idade <=17){
			escreva("Você está na categoria 'Juvenil B'")			
		}		
		senao se(idade >=18 e idade <=59){
			escreva("Você está na categoria 'Adultos'")
		}
		senao se(idade >=60 e idade <=110){
			escreva("Você está na categoria 'Idosos'")
		}
		
	}								
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 321; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */