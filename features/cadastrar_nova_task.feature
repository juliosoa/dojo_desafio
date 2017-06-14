#language: pt
#utf-8

Funcionalidade: Efetuar o cadastro de novas tarefas (tasks)
	Eu como usuario
	Quero acessar o site das Suite CRM  
	Para fazer o cadastro de novas tarefas

@cadastrar
Esquema do Cenário: Efetuar o cadastro de novas tarefas 
 		Dado que estou no site Suite CRM
 		Quando me logar com sucesso no site Suit CRM
 		E preencher as informacoes do "<nome>" "<status>" "<dt_inicio>" "<hora>" "<min>" "<med>" "<relacionado>" "<prioridade>" "<descricao>"
   		Então o cadastro realizado com sucesso

		Exemplos:
         | nome 					| status      | dt_inicio   | hora | min | med | relacionado | prioridade | descricao                    |
         | JULIA PRUDENTE SOARES | Not Started | 06/30/2017  | 09   | 45  | am  | Task        | Medium     | AGUARDANDO NOVAS ORIENTACOES |
         | JULIO CESAR SOARES    | Not Started | 06/30/2017  | 09   | 45  | am  | Task        | Medium     | AGUARDANDO NOVAS ORIENTACOES |
         | SHIRLEY S. P. SOARES  | Not Started | 06/30/2017  | 09   | 45  | am  | Task        | Medium     | AGUARDANDO NOVAS ORIENTACOES |