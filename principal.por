programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro menu, tipo, codigo
		caracter bicicletaLavada, bicicletaPneuTrocado, bicicletaManutencaoFreios
		real precoLavagem, precoTrocaPneu, precoManutencaoFreios, desconto, precoTotal, precoDesconto, valorPago
		logico temDesconto

		precoLavagem = 12.99
		precoManutencaoFreios = 10.99
		precoTrocaPneu = 55.99
		desconto = 0.0
		precoTotal = 0.0
		precoDesconto = 0.0
		valorPago = 0.0
		temDesconto = falso

		escreva("----------|Tipo de Acesso|----------")
		escreva("\n1 - Cliente")
		escreva("\n2 - Funcionário\n")
		escreva("------------------------------------")
		escreva("\nEscolha o tipo de acesso: ")
		leia(tipo)

		escolha (tipo) {
			caso 1:
				escreva("\nQual é o seu nome? ")
				leia(nome)

				se (nome == "xptorestrito") {
					escreva("\n----------||Módulo para abertura de OS||----------\n")
					
					escreva("\nO cliente lavou a bicicleta?\nDigite S ou N: ")
					leia(bicicletaLavada)
					
					escreva("\nO cliente trocou o pneu da bicicleta?\nDigite S ou N: ")
					leia(bicicletaPneuTrocado)
					
					escreva("\nO cliente realizou a manutenção nos freios?\nDigite S ou N: ")
					leia(bicicletaManutencaoFreios)

					se (bicicletaLavada == 's' ou bicicletaLavada == 'S') {
						precoTotal = precoTotal + precoLavagem
					}

					se (bicicletaPneuTrocado == 's' ou bicicletaPneuTrocado == 'S') {
						precoTotal = precoTotal + precoTrocaPneu
					}

					se (bicicletaManutencaoFreios == 's' ou bicicletaManutencaoFreios == 'S') {
						precoTotal = precoTotal + precoManutencaoFreios
					}

					se ((bicicletaLavada == 's' ou bicicletaLavada == 'S') e bicicletaManutencaoFreios == 's' ou bicicletaManutencaoFreios == 'S') {
						desconto = 0.10
						precoDesconto = precoTotal - (precoTotal * desconto)
						temDesconto = verdadeiro
					}
					
					se ((bicicletaPneuTrocado == 's' ou bicicletaPneuTrocado == 'S') e bicicletaManutencaoFreios == 's' ou bicicletaManutencaoFreios == 'S') {
						desconto = 0.20
						precoDesconto = precoTotal - (precoTotal * desconto)
						temDesconto = verdadeiro
					}

					se (temDesconto == verdadeiro) {
						escreva("\n----------|Nota Fiscal|----------")
						escreva("\nValor Total: R$ ", precoTotal)
						escreva("\nPercentual de Desconto: ", desconto * 100, "%")
						escreva("\nValor com Desconto: R$ ", precoDesconto)
						escreva("\nValor Total Pago: R$ ", precoDesconto)
						escreva("\n---------------------------------\n")
					} senao {
						escreva("\n----------|Nota Fiscal|----------")
						escreva("\nValor Total: R$ ", precoTotal)
						escreva("\nValor Total Pago: R$ ", precoTotal)
						escreva("\n---------------------------------\n")
					}
					
					escreva("\n----------||Módulo para abertura de OS||----------\n")
					
				} senao {
					escreva("\nPrezado(a) ", nome, " Seja muito bem-vindo(a) à nossa loja.")
					escreva("\n\nOferecemos em nossa loja venda e manutenção de bicicletas.\nPara venda de bicicletas, procure o colaborador Junior e, para manutenção, procure o colaborador Neto.\n\nObrigado e esperamos que tenha uma ótima experiência em nossa loja.\n\n")
			
					escreva("----------|Menu de Opções|----------")
					escreva("\n1 - Ver ofertas de bicicletas usadas.\n2 - Ver ofetas de bicicletas novas.\n3 - Ver ofertas de acessórios.\n4 - Ver novos serviços.\n5 - Promoção I 10% de desconto.\n6 - Promoção II 10% de desconto.\n")
					escreva("------------------------------------")
					escreva("\nEscolha sua opção: ")
					leia(menu)
	
					se (menu == 1) {
						escreva("\nBicicleta usada na cor azul, aro 26, com 18 marchas e com valor promocional de R$ 400,00.")
					} senao se (menu == 2) {
						escreva("\nBicicleta nova na cor amarela, aro 26, com 18 marchas e na promoção pelo preço de R$ 999,99.")
					} senao se (menu == 3) {
						escreva("\nAcessório em oferta - Capecete de proteção por R$ 59,99.")
					} senao se (menu == 4) {
						escreva("\nNovos serviços oferecidos: Lavagem completa da sua bicicleta por R$ 12,99 | Manutenção dos freios por R$ 10,99 | Troca de pneus por R$ 55,99.")
					} senao se (menu == 5) {
						escreva("\nLave sua bicicleta (R$ 12,99) e realize a manutenção no freio (R$ 10,99) com desconto de 10% na folha de pagamento.")
					} senao se (menu == 6) {
						escreva("\nTroque o pneu da bicicleta (R$ 55,99) e realize manutenção nos freios (R$ 10,99) com 20% de desconto no total do pagamento.")
					}
				}
				
			pare

			caso 2:
				escreva("Digite o código de acesso: ")
				leia(codigo)
			pare

			caso contrario:
				escreva("Digito inválido.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4586; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */