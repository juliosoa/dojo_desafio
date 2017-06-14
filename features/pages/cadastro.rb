class Cadastro < SitePrism::Page
        #rota para acesso ao cadastramento da tarefe		
        element :menu_create, :xpath, "//*[@id='quickcreatetop']/a"
        element :create_task, :xpath, "//*[@id='quickcreatetop']/ul/li[7]/a"

        #prenchimento das informacoes para uma nova tarefa
        element :subject, '#name'
        element :status, '#status'
        element :start_data, '#date_start_date'
        element :start_hour, '#date_start_hours'
        element :start_minutes, '#date_start_minutes'
        element :start_meridiem, '#date_start_meridiem'
        element :related, '#parent_type'
        element :priority, '#priority'
        element :description, '#description'
        element :save_button, :css, "#EditView > div.buttons > #SAVE"    

    def validar_cadastro
         page.has_xpath?("//*[@id='content']/div[1]/h2")  
    end 
end