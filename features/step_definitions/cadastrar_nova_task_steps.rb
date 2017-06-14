Dado(/^que estou no site Suite CRM$/) do
    @login = Login.new
    @login.load
end

Quando(/^me logar com sucesso no site Suit CRM$/) do
#   chamando pagina e efetuando login
    @login.username.set('will')
    @login.password.set('will')
    @login.buttonlogin.click
end

Quando(/^preencher as informacoes do "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |nome, status, dt_inicio, hora, min, med, relacionado, prioridade, descricao|
    @cadastro = Cadastro.new

#   rota para acessar o formulario de criacao de nova tarefa 
    @cadastro.menu_create.click
    @cadastro.create_task.click

#   preenchimento do formulario 
    @cadastro.subject.set(nome)
    @cadastro.status.select(status) 
    @cadastro.start_data.set(dt_inicio)
#---> comentado porque site esta intermitente (ora tem na tela, ora nao tem)
#     @cadastro.start_hour.select(hora)       
#     @cadastro.start_minutes.select(min)       
#     @cadastro.start_meridiem.select(med)
#---> comentado porque site esta intermitente (ora tem na tela, ora nao tem)  
    @cadastro.related.select(relacionado) 
    @cadastro.priority.select(prioridade)
    @cadastro.description.set(descricao)
    #binding.pry

#   salvando a tarefa criada    
    @cadastro.save_button.click 
end

Então(/^o cadastro realizado com sucesso$/) do
    @cadastro.validar_cadastro 
end