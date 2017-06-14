Quando(/^retonar o "([^"]*)" pesquisado no site Suite CRM$/) do |nome|
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

Quando(/^efetuar a delecao e clicar em salvar$/) do
   @deletar = Deletar.new    
   @deletar.selection_name.click
   @deletar.action_link.click
   @deletar.delete_task.click

   

  # binding.pry
end

Então(/^a deleção da tarefa sera efetuda com sucesso$/) do
   @deletar.validar_delecao
end