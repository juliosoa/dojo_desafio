#language: pt
#utf-8

Funcionalidade: Efetuar a delecao de tarefas (tasks)
	Eu como usuario
	Quero pesquisar um nome na lista do site das Suite CRM  
	Para fazer a delecao de tarefas

@deletar
Esquema do Cenário: Efetuar a delecao de tarefas 
 		Dado que estou no site Suite CRM
 		Quando retonar o "<nome>" pesquisado no site Suite CRM
 		E efetuar a delecao e clicar em salvar
		Então a deleção da tarefa sera efetuda com sucesso
 
        Exemplos:
        | nome               |
        | JULIO CESAR SOARES |