class Deletar < SitePrism::Page
        #rota para acesso a delecao da tarefa		
        element :selection_name, :xpath,"//*[@id='MassUpdate']/div[3]/table/tbody/tr/td[4]/b/a"
        element :action_link, :xpath, "//*[@id='tab-actions']/a"
        element :delete_task, :xpath,  "//*[@id='delete_button']"
        
   def validar_delecao
  	#    assert_text('No results found')
  	page.driver.browser.switch_to.alert.accept
   end
end