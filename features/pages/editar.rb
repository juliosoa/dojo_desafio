class Editar < SitePrism::Page
        #rota para acesso a edicao da tarefa		
        element :selection_name, :xpath,"//*[@id='MassUpdate']/div[3]/table/tbody/tr/td[4]/b/a"
        element :action_link, :xpath, "//*[@id='tab-actions']/a"
        element :edit_task, :xpath, "//*[@id='edit_button']"
        element :start_data, '#date_start_date'
        #element :start_hour, '#date_start_hours'
        #element :start_minutes, '#date_start_minutes'
        #element :start_meridiem, '#date_start_meridiem'
        element :priority, '#priority'
        element :description, '#description'

        element :save_button, :css, "#EditView > div.buttons > #SAVE"    

   def validar_edicao
  	    page.has_xpath?("//*[@id='content']/div[1]/h2")  
   end
end