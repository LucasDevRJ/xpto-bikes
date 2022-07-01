programa
{
	
	funcao inicio()
	{
		
		cadeia nomeCliente, carrinhoCompras[10]
		caracter formaPagamento
		inteiro opcaoMenu, codigoMenu, posicao
		real valorCarrinhoCompras[10], valorTotal, desconto, valorTotalDesconto

		posicao = 0
		valorTotal = 0.0
		desconto = 0.0
		valorTotalDesconto = 0.0
		
		escreva("Bem-vindo ao autoatendimento da bicicletaria XPTO bikes.")
		escreva("\n")
		escreva("Digite seu nome: ")
		leia(nomeCliente)

		enquanto (nomeCliente == "") {
			escreva("\nDigite seu nome!!!\nDigite: ")
			leia(nomeCliente)
		}
		
		escreva("\n")

		faca {
			escreva("\n----------|Menu de Opções|----------")
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

			se (opcaoMenu == 1) {

				faca {
					escreva("\n----------|Menu das Promoções|----------\n")
					escreva("Código 101 - Bicicleta nova na cor amarela, aro 26, com 18 marchas e na promoção pelo preço de R$ 999,99.")
					escreva("\n")
					escreva("Código 102 - Bicicleta usada na cor azul, aro 26, com 18 marchas e com valor promocional de R$ 400,00.")
					escreva("\n")
					escreva("Código 103 - Capacete de proteção por R$ 59,99.")
					escreva("\n")
					escreva("Código 104 - Freio a disco por R$ 89,99.")
					escreva("\n")
					escreva("8 - Adicionar ao carrinho de compras.")
					escreva("\n")
					escreva("0 - Voltar.")
					escreva("\n------------------------------------------\n")

					escreva("Digite 8 ou 0: ")
					leia(codigoMenu)

					enquanto (codigoMenu != 8 e codigoMenu != 0) {
						escreva("\nDigite somente 8 ou 0!\nDigite: ")
						leia(codigoMenu)
					}

					se (codigoMenu == 8) {
						escreva("Digite o código promocional desejado: ")
						leia(codigoMenu)

							se (posicao <= 2) {
								se (codigoMenu == 101) {
								carrinhoCompras[posicao] = "Bicicleta nova na cor amarela, aro 26, com 18 marchas."
								valorCarrinhoCompras[posicao] = 999.99
								valorTotal = valorTotal + valorCarrinhoCompras[posicao]
								posicao++
								escreva("\nProduto adicionado no carrinho!\n")
								
								} senao se (codigoMenu == 102) {
									carrinhoCompras[posicao] = "Bicicleta usada na cor azul, aro 26, com 18 marchas."
									valorCarrinhoCompras[posicao] = 400.00
									valorTotal = valorTotal + valorCarrinhoCompras[posicao]
									posicao++
									escreva("\nProduto adicionado no carrinho!\n")
									
								} senao se (codigoMenu == 103) {
									carrinhoCompras[posicao] = "Capacete de proteção."
									valorCarrinhoCompras[posicao] = 59.99
									valorTotal = valorTotal + valorCarrinhoCompras[posicao]
									posicao++
									escreva("\nProduto adicionado no carrinho!\n")
									
								} senao se (codigoMenu == 104) {
									carrinhoCompras[posicao] = "Freio a disco."
									valorCarrinhoCompras[posicao] = 89.99
									valorTotal = valorTotal + valorCarrinhoCompras[posicao]
									posicao++
									escreva("\nProduto adicionado no carrinho!\n")
									
								} senao {
									escreva("\nCódigo inválido!\n")
								}
						} senao {
							escreva("\nCarinho está cheio!\n")
						}
					}
					
				} enquanto (codigoMenu != 0)
				
			} senao se (opcaoMenu == 2) {
				
				faca {
					escreva("Código 201 - Troca de pneu - R$ 59,99.")
					escreva("\n")
					escreva("Código 202 - Lavagem completa - R$ 12,99.")
					escreva("\n")
					escreva("Código 203 - Freio - R$ 10,99.")
					escreva("\n")
					escreva("8 - Adicionar ao carrinho de compras.")
					escreva("\n")
					escreva("0 - Voltar.")
					escreva("\n")

					escreva("Digite 8 ou 0: ")
					leia(codigoMenu)

					enquanto (codigoMenu != 8 e codigoMenu != 0) {
						escreva("\nDigite somente 8 ou 0!\nDigite: ")
						leia(codigoMenu)
					}

					se (codigoMenu == 8) {
						escreva("Digite o código do serviço desejado: ")
						leia(codigoMenu)

							se (posicao <= 2) {
								se (codigoMenu == 201) {
								carrinhoCompras[posicao] = "Troca de pneu."
								valorCarrinhoCompras[posicao] = 999.99
								valorTotal = valorTotal + valorCarrinhoCompras[posicao]
								posicao++
								
								} senao se (codigoMenu == 202) {
									carrinhoCompras[posicao] = "Lavagem completa."
									valorCarrinhoCompras[posicao] = 59.99
									valorTotal = valorTotal + valorCarrinhoCompras[posicao]
									posicao++
									
								} senao se (codigoMenu == 203) {
									carrinhoCompras[posicao] = "Lavagem completa."
									valorCarrinhoCompras[posicao] = 12.99
									valorTotal = valorTotal + valorCarrinhoCompras[posicao]
									posicao++
									
								} senao  {
									escreva("\nCódigo inválido!\n")
								}
								
						} senao {
							escreva("\nCarinho está cheio!\n")
						}
					}
					
				} enquanto (codigoMenu != 0)
				
			} senao se (opcaoMenu == 3) {
				escreva("\n----------|Carrinho de Compras|----------\n")
				para (inteiro cont = 0; cont <= 2; cont++) {
					escreva("\nProduto: ", carrinhoCompras[cont])
					escreva("\nValor: ", valorCarrinhoCompras[cont])
				}
				escreva("\n--------------------------------------------\n")
				
			} senao se (opcaoMenu == 4) {
				
				escreva("\nEscolha a forma de pagamento:\nD - Dinheiro\nC - Cartão\nDigite: ")
				leia(formaPagamento)

				enquanto (formaPagamento != 'D' e formaPagamento != 'C') {
					escreva("\nDigito incorreto!")
					escreva("\nDigite somente D ou C")
					escreva("\nEscolha a forma de pagamento:\nD - Dinheiro\nC - Cartão\nDigite: ")
					leia(formaPagamento)
				}

				se (formaPagamento == 'D') {
					desconto = 10.0 / 100
					valorTotalDesconto = valorTotal - (valorTotal * desconto)
					escreva("\nValor Total dos Produtos: R$ ", valorTotal)
					escreva("\nDesconto: ", desconto * 100, "%")
					escreva("\nValor Final: R$ ", valorTotalDesconto)
				} senao {
					escreva("\nValor Total dos Produtos: R$ ", valorTotal)
				}
			}
			
		} enquanto (opcaoMenu != 0)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 536; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */