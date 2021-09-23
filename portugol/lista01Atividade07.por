//atividade 07
programa
{
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real a, b, c, d, E, f, x, y
		escreva("digite o valor de a: ")
		leia(a)
		escreva("digite o valor de b: ")
		leia(b)
		escreva("digite o valor de c: ")
		leia(c)
		escreva("digite o valor de d: ")
		leia(d)
		escreva("digite o valor de E: ")
		leia(E)
		escreva("digite o valor de f: ")
		leia(f)

		x = (c*E)-(b*f)/(a*E)-(b*d)
		y = (a*f)-(c*d)/(a*E)-(b*d)

		d = Matematica.arredondar(x, 2)
		d = Matematica.arredondar(y, 2)
		
		escreva("valor de x: ",x ," valor de y:", y)




		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 45; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */