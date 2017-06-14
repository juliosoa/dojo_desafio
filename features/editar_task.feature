#language: pt
#utf-8

Funcionalidade: Efetuar a edicao de tarefas (tasks)
	Eu como usuario
	Quero pesquisar um nome na lista do site das Suite CRM  
	Para fazer a edicao de tarefas

@editar
Esquema do Cenário: Efetuar a edicao de tarefas 
 		Dado que estou no site Suite CRM
 		Quando encontrar o "<nome>" pesquisado no site Suite CRM
 		E efetuar a edicao da "<dt_inicio>" "<hora>" "<min>" "<med>" "<prioridade>" "<descricao>" das tasks e clicar em salvar
		Então a edicao da tarefa sera efetuda com sucesso
 
        Exemplos:
        | nome                  | dt_inicio  | hora | min | med | prioridade | descricao                                                       |
        | JULIA PRUDENTE SOARES | 04/07/2017 | 05   | 00  | pm  | Low        | A DATA, HORA E PRIORIDADE FORAM ALTERADAS PARA ATENDER A TAREFA |  