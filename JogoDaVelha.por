programa{
	
	inclua biblioteca Util

	funcao vazio PlacarDoJogo (cadeia Jogadores[], caracter Caracteres[], inteiro Placar[]) {
		escreva ("Placar\n")
		escreva ("\t" + Jogadores[0] + " (" + Caracteres[0] + "): " + Placar[0] + "\n")
		escreva ("\t" + Jogadores[1] + " (" + Caracteres[1] + "): " + Placar[1] + "\n")
		escreva ("\tVelha: " + Placar[2] + "\n")
	}

	funcao vazio nomeJogadoreseCaracter (cadeia nomeJogador[], caracter opcaoCaracter[]){
		para(inteiro i = 0; i < 2; i++){
			escreva("Informe o nome do jogador " +(i+1)+ " :\n")
			leia(nomeJogador[i])
			escreva("Informe o simbolo do jogador " +(i+1)+ ":\n")
			leia(opcaoCaracter[i])
			enquanto(opcaoCaracter[0] == opcaoCaracter[1]){
				escreva("Opção inválida! Digite novamente:\n")
				leia(opcaoCaracter[1])
			}
		}
	}

	funcao vazio apresentarNomeseCaracter(cadeia nomeJogador[], caracter opcaoCaracter[]){
		para(inteiro i = 0; i < 2; i++){
			escreva("Jogador "+ (i+1) + ": " + nomeJogador[i] + "(" +opcaoCaracter[i]+	")\n")
		}
	}
	
	funcao inteiro Sorteio (){
		inteiro numeroSorteado = Util.sorteia(1, 2)
		escreva("\nJogador a iniciar:" + numeroSorteado)
		retorne numeroSorteado
	}

	funcao vazio proximoJogador(inteiro proximo){
		inteiro numeroSorteado
          numeroSorteado = Sorteio()
		se(numeroSorteado == 1){
			proximo = 2
			escreva("\nO jogador 2 iniciará o próximo jogo")
		}senao{
			proximo = 1
			escreva("\nO jogador 1 iniciará o próximo jogo")
		}
	}
	
	funcao inicio(){
		cadeia nomeJogador[2]
		caracter opcaoCaracter[2]
		inteiro numeroSorteado = 0, sorteio, proximo = 0, posicao, pontuacaoJogadores[3], Placar[3], opcaomenu, fim = 0
		inteiro jogo[3][3]
		caracter apresentacao[3][3] = {{' ',' ',' '},{' ',' ',' '},{' ',' ',' '}}

		para(inteiro i = 0; i<2; i++){
			para(inteiro j = 0; j < 2; j++){
				jogo[i][j] = 0
			}
		}
		//ITEM 1 -- SOLICITAR O NOME DOS JOGADORES
		escreva("=================\n")
		escreva("  JOGO DA VELHA\n")
		escreva("=================\n")
		Util.aguarde(1500)
		nomeJogadoreseCaracter(nomeJogador, opcaoCaracter)
		
		//ITEM 2 -- SORTEIO PARA O INÍCIO DO JOGO
		escreva ("\n")
		
		//ITEM PARA ESCOLHER O PRÓXIMO JOGADOR
		apresentarNomeseCaracter(nomeJogador, opcaoCaracter)
		escreva ("\n")
		
		//ITEM 3 -- MENU COM PLACAR, JOGADOR QUE INICIARÁ NA PRÓXIMA PARTIDA, INICIAR JOGO E VER ESTADO FINAL DO ÚLTIMO JOGO

		escreva("MENU\n")
		proximoJogador(proximo)
		escreva("\nPlacar:\n"+nomeJogador[0]+": " +pontuacaoJogadores[0]+ "\n" +nomeJogador[1]+ ": "+pontuacaoJogadores[1]+"\nEmpate: " +pontuacaoJogadores[2]+ "\n\nEscolha uma opção:\n 1: Jogar \n 2: Visualizar estado final da última partida \n 3: Parar \n")
		leia(opcaomenu)
		//ITEM 3.1 -- INICIAR JOGO
		se(opcaomenu == 1) {
			//ITEM 4 -- SITUAÇÃO ATUAL DO JOGO
			escreva("Placar:\n"+nomeJogador[0]+": " +pontuacaoJogadores[0]+ "\n" +nomeJogador[1]+ ": "+pontuacaoJogadores[1]+"\nEmpate: " +pontuacaoJogadores[2]+ "\n")
	
				//CÓDIGO DO JOGO
				escreva("Utilize os numeros para escolher as posições\n")
				escreva(" 1 | 2 | 3\n"+
					   "___________ \n"+
			        	   " 4 | 5 | 6\n"+
			         	   "___________\n"+
			             " 7 | 8 | 9\n")
					    
				enquanto(fim == 0){
	
				//CASO DO JOGADOR 1 COMO PRIMEIRO A JOGAR
				se(numeroSorteado == 1){
					escreva("Digite uma posição:\n")
			     	leia(posicao)
			     		
			     	//OPÇÕES DE JOGO DO JOGADOR 1
				     escolha (posicao) {
						caso 1:
							se(jogo[0][0] == 0){
					     		jogo[0][0] = -1
					          	apresentacao[0][0] = opcaoCaracter[0]
							}
							senao{
								escreva("Opção inválida, digite novamente:")
								leia(posicao)
							}
							pare
					     caso 2:
					     	se(jogo[0][1] == 0){
					         		jogo[0][1] = -1
					          	apresentacao[0][1] = opcaoCaracter[0]
					     	}
					     	senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 3:
					     	se(jogo[0][2] == 0){
					          	jogo[0][2] = -1
					          	apresentacao[0][2] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 4:
					     	se(jogo[1][0] == 0){
					          	jogo[1][0] = -1
					          	apresentacao[1][0] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 5:
					     	se(jogo[1][1] == 0){
					          	jogo[1][1] = -1
					          	apresentacao[1][1] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 6:
					     	se(jogo[1][2] == 0){
					          	jogo[1][2] = -1
					          	apresentacao[1][2] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 7:
					     	se(jogo[2][0] == 0){
					         		jogo[2][0] = -1
					          	apresentacao[2][0] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 8:
					     	se(jogo[2][1] == 0){
					          	jogo[2][1] = -1
					          	apresentacao[2][1] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 9:
					     	se(jogo[2][2] == 0){
					          	jogo[2][2] = -1
					          	apresentacao[2][2] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso contrario:
					          escreva("A operação digitada é inválida!\n")
					          escreva("Digite novamente:\n")
					          leia(posicao)
				 	}
				 	
				 	inteiro Soma1 = jogo[0][0] + jogo[0][1] + jogo[0][2]
		        		inteiro Soma2 = jogo[1][0] + jogo[1][1] + jogo[1][2]
		            	inteiro Soma3 = jogo[2][0] + jogo[2][1] + jogo[2][2]
		        		inteiro Soma4 = jogo[0][0] + jogo[1][0] + jogo[2][0]
		        		inteiro Soma5 = jogo[0][1] + jogo[1][1] + jogo[2][1]
		          	inteiro Soma6 = jogo[0][2] + jogo[1][2] + jogo[2][2]
		        		inteiro Soma7 = jogo[0][0] + jogo[1][1] + jogo[2][2]
		        		inteiro Soma8 = jogo[0][2] + jogo[1][1] + jogo[2][0]
	
		        		//SOMA DAS JOGADAS PARA CALCULAR O RESULTADO DO JOGO
				 	se(Soma1 == -3 ou Soma2 == -3 ou Soma3 == -3 ou Soma4 == -3 ou Soma5 == -3 ou Soma6 == -3 ou Soma7 == -3 ou Soma8 == -3 ){
				     	escreva("Jogador 1 Ganhou!! Párabens!!")
				     	pontuacaoJogadores[0] = + 1
				      	escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
				 	senao se(Soma1 == 3 ou Soma2 == 3 ou Soma3 == 3 ou Soma4 == 3 ou Soma5 == 3 ou Soma6 == 3 ou Soma7 == 3 ou Soma8 == 3 ){
				    		escreva("Jogador 2 Ganhou!! Párabens!!")
				    		pontuacaoJogadores[1] = + 1
				    		escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
				 	senao se(jogo[0][0] != 0 e jogo[0][1] != 0 e jogo[0][2] != 0 e jogo[1][0] != 0 e jogo[1][1] != 0 e jogo[1][2] != 0 e jogo[2][0] != 0 e jogo[2][1] != 0 e jogo[2][2] != 0 ){
				      	pontuacaoJogadores[2] = + 1
				      	escreva("Deu Velha")
				      	escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
					
		        	     escreva(" " +apresentacao[0][0]+ " | " + apresentacao[0][1]+ " | " +apresentacao[0][2]+"\n"+
		        		        "___________\n"+
		        		        " " +apresentacao[1][0]+ " | " + apresentacao[1][1]+ " | " +apresentacao[1][2]+"\n"+
		        		        "___________\n"+
		        		        " " +apresentacao[2][0]+ " | " + apresentacao[2][1]+ " | " +apresentacao[2][2]+"\n") 
	
		        		//VEZ DO JOGADOR 2	   
				     escreva("Vez do Jogador 2\n")
				     escreva("Digite uma posição\n")
					leia(posicao)
	
					//OPÇÕES DO JOGADOR 2
					escolha (posicao) {
						caso 1:
							se(jogo[0][0] == 0){
					     		jogo[0][0] = -1
					          	apresentacao[0][0] = opcaoCaracter[0]
							}
							senao{
								escreva("Opção inválida, digite novamente:")
								leia(posicao)
							}
							pare
					     caso 2:
					     	se(jogo[0][1] == 0){
					         		jogo[0][1] = -1
					          	apresentacao[0][1] = opcaoCaracter[0]
					     	}
					     	senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 3:
					     	se(jogo[0][2] == 0){
					          	jogo[0][2] = -1
					          	apresentacao[0][2] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 4:
					     	se(jogo[1][0] == 0){
					          	jogo[1][0] = -1
					          	apresentacao[1][0] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 5:
					     	se(jogo[1][1] == 0){
					          	jogo[1][1] = -1
					          	apresentacao[1][1] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 6:
					     	se(jogo[1][2] == 0){
					          	jogo[1][2] = -1
					          	apresentacao[1][2] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 7:
					     	se(jogo[2][0] == 0){
					         		jogo[2][0] = -1
					          	apresentacao[2][0] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 8:
					     	se(jogo[2][1] == 0){
					          	jogo[2][1] = -1
					          	apresentacao[2][1] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 9:
					     	se(jogo[2][2] == 0){
					          	jogo[2][2] = -1
					          	apresentacao[2][2] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso contrario:
					          escreva("A operação digitada é inválida!\n")
					          escreva("Digite novamente:\n")
					          leia(posicao)
				 	}
	
					//PRINT DA MATRIZ
				     escreva(" " +apresentacao[0][0]+ " | " + apresentacao[0][1]+ " | " +apresentacao[0][2]+"\n"+
		        		        "___________\n"+
		        		        " " +apresentacao[1][0]+ " | " + apresentacao[1][1]+ " | " +apresentacao[1][2]+"\n"+
		        		        "___________\n"+
		        		        " " +apresentacao[2][0]+ " | " + apresentacao[2][1]+ " | " +apresentacao[2][2]+"\n") 
	
		        		//SOMA DAS JOGADAS PARA CALCULAR O RESULTADO DO JOGO
			     	Soma1 = jogo[0][0] + jogo[0][1] + jogo[0][2]
				 	Soma2 = jogo[1][0] + jogo[1][1] + jogo[1][2]
					Soma3 = jogo[2][0] + jogo[2][1] + jogo[2][2]
				 	Soma4 = jogo[0][0] + jogo[1][0] + jogo[2][0]
				 	Soma5 = jogo[0][1] + jogo[1][1] + jogo[2][1]
				 	Soma6 = jogo[0][2] + jogo[1][2] + jogo[2][2]
				 	Soma7 = jogo[0][0] + jogo[1][1] + jogo[2][2]
				 	Soma8 = jogo[0][2] + jogo[1][1] + jogo[2][0]
				 	se(Soma1 == -3 ou Soma2 == -3 ou Soma3 == -3 ou Soma4 == -3 ou Soma5 == -3 ou Soma6 == -3 ou Soma7 == -3 ou Soma8 == -3 ){
				     	escreva("Jogador 1 Ganhou!! Párabens!!")
				     	pontuacaoJogadores[0] = + 1
				      	escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
				 	senao se(Soma1 == 3 ou Soma2 == 3 ou Soma3 == 3 ou Soma4 == 3 ou Soma5 == 3 ou Soma6 == 3 ou Soma7 == 3 ou Soma8 == 3 ){
				    		escreva("Jogador 2 Ganhou!! Párabens!!")
				    		pontuacaoJogadores[1] = + 1
				    		escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
				 	senao se(jogo[0][0] != 0 e jogo[0][1] != 0 e jogo[0][2] != 0 e jogo[1][0] != 0 e jogo[1][1] != 0 e jogo[1][2] != 0 e jogo[2][0] != 0 e jogo[2][1] != 0 e jogo[2][2] != 0 ){
				      	pontuacaoJogadores[2] = + 1
				      	escreva("Deu Velha")
				      	escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
				 	
				 }
				 senao{
					//CASO O JOGADOR 2 SEJA SORTEADO PARA INICIAR O JOGO
					escreva("O jogador 2 inicia\n")
					escreva("Digite uma posição:\n")
					leia(posicao)
					     	
					//OPÇÕES DO JOGADOR 2
					escolha (posicao){
						caso 1:
							se(jogo[0][0] == 0){
					      		jogo[0][0] = 1
					          	apresentacao[0][0] = opcaoCaracter[1]
							}
							senao{
								escreva("Opção inválida, digite novamente: ")
								leia(posicao)
							}
							pare
					     caso 2:
					     	se(jogo[0][1] == 0){
					        		jogo[0][1] = 1
					          	apresentacao[0][1] = opcaoCaracter[1]
					          }
					          senao{
								escreva("Opção inválida, digite novamente: ")
								leia(posicao)
							}
							pare
					     caso 3:
					     	se(jogo[0][2] == 0){
					          	jogo[0][2] = 1
					          	apresentacao[0][2] = opcaoCaracter[1]
					     	}
					     	senao{
								escreva("Opção inválida, digite novamente: ")
								leia(posicao)
								
							}
							pare
					     caso 4:
					     	se(jogo[1][0] == 0){
					          	jogo[1][0] = 1
					          	apresentacao[1][0] = opcaoCaracter[1]
					    		}
					    		senao{
								escreva("Opção inválida, digite novamente: ")
								leia(posicao)
								
							}
							pare
					     caso 5:
					     	se(jogo[1][1] == 0){
					          	jogo[1][1] = 1
					          	apresentacao[1][1] = opcaoCaracter[1]
					          }
					          senao{
								escreva("Opção inválida, digite novamente: ")
								leia(posicao)
								
							}
							pare
					     caso 6:
					     	se(jogo[1][2] == 0){
					          	jogo[1][2] = 1
					          	apresentacao[1][2] = opcaoCaracter[1]
					          }
					          senao{
								escreva("Opção inválida, digite novamente: ")
								leia(posicao)
								
							}
							pare
					     caso 7:
					     	se(jogo[2][0] == 0){
					          	jogo[2][0] = 1
					          	apresentacao[2][0] = opcaoCaracter[1]
					          }
					          senao{
								escreva("Opção inválida, digite novamente: ")
								leia(posicao)
								
							}
							pare
					     caso 8:
					     	se(jogo[2][1] == 0){
					          	jogo[2][1] = 1
					          	apresentacao[2][1] = opcaoCaracter[1]
					          }
					          senao{
								escreva("Opção inválida, digite novamente: ")
								leia(posicao)
								
							}
							pare
					     caso 9:
					     	se(jogo[2][2] == 0){
					          	jogo[2][2] = 1
					          	apresentacao[2][2] = opcaoCaracter[1]
					          }
					          senao{
								escreva("Opção inválida, digite novamente: ")
								leia(posicao)
								
							}
							pare
					     caso contrario:
					          escreva("A operação digitada é inválida!\n")
					          escreva("Digite novamente:")
					          leia(posicao)
					}
					
					inteiro Soma1 = jogo[0][0] + jogo[0][1] + jogo[0][2]
				     inteiro Soma2 = jogo[1][0] + jogo[1][1] + jogo[1][2]
				     inteiro Soma3 = jogo[2][0] + jogo[2][1] + jogo[2][2]
				     inteiro Soma4 = jogo[0][0] + jogo[1][0] + jogo[2][0]
				     inteiro Soma5 = jogo[0][1] + jogo[1][1] + jogo[2][1]
				     inteiro Soma6 = jogo[0][2] + jogo[1][2] + jogo[2][2]
				     inteiro Soma7 = jogo[0][0] + jogo[1][1] + jogo[2][2]
				     inteiro Soma8 = jogo[0][2] + jogo[1][1] + jogo[2][0]
				     
					se(Soma1 == -3 ou Soma2 == -3 ou Soma3 == -3 ou Soma4 == -3 ou Soma5 == -3 ou Soma6 == -3 ou Soma7 == -3 ou Soma8 == -3 ){
				     	escreva("Jogador 1 Ganhou!! Párabens!!")
				     	pontuacaoJogadores[0] = + 1
				      	escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
				 	senao se(Soma1 == 3 ou Soma2 == 3 ou Soma3 == 3 ou Soma4 == 3 ou Soma5 == 3 ou Soma6 == 3 ou Soma7 == 3 ou Soma8 == 3 ){
				    		escreva("Jogador 2 Ganhou!! Párabens!!")
				    		pontuacaoJogadores[1] = + 1
				    		escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
				 	senao se(jogo[0][0] != 0 e jogo[0][1] != 0 e jogo[0][2] != 0 e jogo[1][0] != 0 e jogo[1][1] != 0 e jogo[1][2] != 0 e jogo[2][0] != 0 e jogo[2][1] != 0 e jogo[2][2] != 0 ){
				      	pontuacaoJogadores[2] = + 1
				      	escreva("Deu Velha")
				      	escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
						  
				     escreva(" " +apresentacao[0][0]+ " | " + apresentacao[0][1]+ " | " +apresentacao[0][2]+"\n"+
				        	   "___________\n"+
				        	   " " +apresentacao[1][0]+ " | " + apresentacao[1][1]+ " | " +apresentacao[1][2]+"\n"+
				        	   "___________\n"+
				        	   " " +apresentacao[2][0]+ " | " + apresentacao[2][1]+ " | " +apresentacao[2][2]+"\n") 
				        		         		   
				     //VEZ DO JOGADOR 1 JOGAR
					escreva("Vez do Jogador 1\n")
					  				
					escreva("Digite uma posição\n")
					leia(posicao)
					escolha (posicao) {
						caso 1:
							se(jogo[0][0] == 0){
					     		jogo[0][0] = -1
					          	apresentacao[0][0] = opcaoCaracter[0]
							}
							senao{
								escreva("Opção inválida, digite novamente:")
								leia(posicao)
							}
							pare
					     caso 2:
					     	se(jogo[0][1] == 0){
					         		jogo[0][1] = -1
					          	apresentacao[0][1] = opcaoCaracter[0]
					     	}
					     	senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 3:
					     	se(jogo[0][2] == 0){
					          	jogo[0][2] = -1
					          	apresentacao[0][2] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 4:
					     	se(jogo[1][0] == 0){
					          	jogo[1][0] = -1
					          	apresentacao[1][0] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 5:
					     	se(jogo[1][1] == 0){
					          	jogo[1][1] = -1
					          	apresentacao[1][1] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 6:
					     	se(jogo[1][2] == 0){
					          	jogo[1][2] = -1
					          	apresentacao[1][2] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 7:
					     	se(jogo[2][0] == 0){
					         		jogo[2][0] = -1
					          	apresentacao[2][0] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 8:
					     	se(jogo[2][1] == 0){
					          	jogo[2][1] = -1
					          	apresentacao[2][1] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso 9:
					     	se(jogo[2][2] == 0){
					          	jogo[2][2] = -1
					          	apresentacao[2][2] = opcaoCaracter[0]
					          }
					          senao{
					     		escreva("Opção inválida, digite novamente:")
								leia(posicao)
					     	}
					     	pare
					     caso contrario:
					          escreva("A operação digitada é inválida!\n")
					          escreva("Digite novamente:\n")
					          leia(posicao)
				 	}
					escreva(" " +apresentacao[0][0]+ " | " + apresentacao[0][1]+ " | " +apresentacao[0][2]+"\n"+
				        	   "___________\n"+
				        	   " " +apresentacao[1][0]+ " | " + apresentacao[1][1]+ " | " +apresentacao[1][2]+"\n"+
				        	   "___________\n"+
				        	   " " +apresentacao[2][0]+ " | " + apresentacao[2][1]+ " | " +apresentacao[2][2]+"\n") 
					Soma1 = jogo[0][0] + jogo[0][1] + jogo[0][2]
					Soma2 = jogo[1][0] + jogo[1][1] + jogo[1][2]
					Soma3 = jogo[2][0] + jogo[2][1] + jogo[2][2]
					Soma4 = jogo[0][0] + jogo[1][0] + jogo[2][0]
					Soma5 = jogo[0][1] + jogo[1][1] + jogo[2][1]
					Soma6 = jogo[0][2] + jogo[1][2] + jogo[2][2]
					Soma7 = jogo[0][0] + jogo[1][1] + jogo[2][2]
					Soma8 = jogo[0][2] + jogo[1][1] + jogo[2][0]
					se(Soma1 == -3 ou Soma2 == -3 ou Soma3 == -3 ou Soma4 == -3 ou Soma5 == -3 ou Soma6 == -3 ou Soma7 == -3 ou Soma8 == -3 ){
				     	escreva("Jogador 1 Ganhou!! Párabens!!")
				     	pontuacaoJogadores[0] = + 1
				      	escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
				 	senao se(Soma1 == 3 ou Soma2 == 3 ou Soma3 == 3 ou Soma4 == 3 ou Soma5 == 3 ou Soma6 == 3 ou Soma7 == 3 ou Soma8 == 3 ){
				    		escreva("Jogador 2 Ganhou!! Párabens!!")
				    		pontuacaoJogadores[1] = + 1
				    		escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
				 	senao se(jogo[0][0] != 0 e jogo[0][1] != 0 e jogo[0][2] != 0 e jogo[1][0] != 0 e jogo[1][1] != 0 e jogo[1][2] != 0 e jogo[2][0] != 0 e jogo[2][1] != 0 e jogo[2][2] != 0 ){
				      	pontuacaoJogadores[2] = + 1
				      	escreva("Deu Velha")
				      	escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
				     	fim = 1
				 	}
				}
			}
		}
		senao se(opcaomenu == 2){
			escreva("Placar:\n"+nomeJogador[0]+ ": "+pontuacaoJogadores[0]+"\n"+nomeJogador[1]+": "+pontuacaoJogadores[1]+"\nEmpate: "+pontuacaoJogadores[2])
		}
		senao{
			
		}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 23114; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */