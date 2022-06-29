programa
{
	
	funcao inicio()
	{
		cadeia nomeCliente
		inteiro opcaoMenu
		
		escreva("Bem-vindo ao autoatendimento da bicicletaria XPTO bikes.")
		escreva("\n")
		escreva("Digite seu nome: ")
		leia(nomeCliente)
		
		escreva("\n")

		escreva("----------|Menu de Opções|----------")
		escreva("\nOpção 1 - Ver promoções.")
		escreva("\nOpção 2 - Solicitar serviço de manutenção.")
		escreva("\nOpção 3 - Listar carinho de compra.")
		escreva("\nOpção 4 - Finalizar carrinho de compra.")
		escreva("\nOpção 0 - Sair.")
		escreva("\n")
		escreva("------------------------------------")
		escreva("\n")
		escreva("Digite sua opção desejada: ")
		leia(opcaoMenu)

		escreva("\n")
		
		escolha (opcaoMenu) {
			caso 1:
				escreva("Código 101 - Bicicleta nova na cor amarela, aro 26, com 18 marchas e na promoção pelo preço de R$ 999,99.")
				escreva("\n")
				escreva("Código 102 - Bicicleta usada na cor azul, aro 26, com 18 marchas e com valor promocional de R$ 400,00.")
				escreva("\n")
				escreva("Código 103 - Capacete de proteção por R$ 59,99.")
				escreva("\n")
				escreva("Código 104 - Freio a disco por R$ 89,99")
				escreva("\n")
				escreva("8 - Adicionar ao carrinho de compras.")
				escreva("\n")
				escreva("0 - Voltar")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1244; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */