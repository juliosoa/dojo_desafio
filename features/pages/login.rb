class Login < SitePrism::Page
	set_url "https://demo.suiteondemand.com" 
	element :username, '#user_name'
	element :password, '#user_password'
	element :buttonlogin, '#bigbutton'
end