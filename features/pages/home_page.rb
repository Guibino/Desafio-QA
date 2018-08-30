class Home < SitePrism::Page   
    set_url 'https://www.phptravels.net/admin'

    element :email_field, 'input[type="text"]'
    element :pass_field, 'input[name="password"]'
    element :login_button, 'button[type="submit"]'
    
    def user_fill(user)
        email_field.set(user)
    end
    
    def pass_fill(pass)
        pass_field.set(pass) 
    end

    def login_enter
        login_button.click
    end
end