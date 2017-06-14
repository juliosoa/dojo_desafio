class Pesquisar < SitePrism::Page
        #rota para acesso a edicao da tarefa		
        element :menu_create, :xpath,"//*[@id='quickcreatetop']/a"
        element :create_task, :xpath, "//*[@id='quickcreatetop']/ul/li[7]/a"
        element :view_tasks, :xpath,"//*[@id='actionMenuSidebar']/ul/li[2]/a/div[2]"
        element :filter_subject, :xpath,"//*[@id='pagination']/td/table/tbody/tr/td[1]/ul[3]/li/a", :match => :first
        element :find_subject, '#name_basic'
        element :search_button, '#search_form_submit'

 #   def validar_pesquisa
 #  	    assert_text(find_subject)
 #   end
end


