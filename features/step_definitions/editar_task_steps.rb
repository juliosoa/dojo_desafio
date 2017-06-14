Quando(/^encontrar o "([^"]*)" pesquisado no site Suite CRM$/) do |nome|
#   chamando a função de login
    @login.username.set('will')
    @login.password.set('will')
    @login.buttonlogin.click

#   chamando a função de pesquisa
    @pesquisar = Pesquisar.new
    @pesquisar.menu_create.click
    @pesquisar.create_task.click
    @pesquisar.view_tasks.click
    @pesquisar.filter_subject.click
    @pesquisar.find_subject.set(nome)
    @pesquisar.search_button.click
 #  binding.pry   
end

Quando(/^efetuar a edicao da "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" das tasks e clicar em salvar$/) do |dt_inicio, hora, min, med, prioridade, descricao|
    @editar = Editar.new    
    @editar.selection_name.click
    @editar.action_link.click
    @editar.edit_task.click

#   campos editados
	@editar.start_data.set(dt_inicio)
#    @editar.start_hour.select(hora)
#    @editar.start_minutes.select(min)
    #@editar.start_meridiem.select(med)
    @editar.priority.select(prioridade)
    @editar.description.set(descricao)
    @editar.save_button.click
 #   binding.pry
end

Então(/^a edicao da tarefa sera efetuda com sucesso$/) do
   @editar.validar_edicao 
end