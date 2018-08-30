class Admin < SitePrism::Page
    element :accounts_button, 'a[href="#ACCOUNTS"]'
    element :suppliers_button, 'a[href="https://www.phptravels.net/admin/accounts/suppliers/"]'
    element :add_button, 'button[type="submit"]'

    element :first_name_field, 'input[name="fname"]'
    element :last_name_field, 'input[name="lname"]'
    element :email_field, 'input[name="email"]'
    element :password_name_field, 'input[name="password"]'
    element :mobile_field, 'input[name="mobile"]'
    element :country_field, 'option[value="BR"]'
    element :address_field, 'input[name="address1"]'
    element :adress2_field, 'input[name="address2"]'

    element :submit_button, 'button[class="btn btn-primary"]'


    def suppliers
        accounts_button.click 
        suppliers_button.click
        sleep(2)
        add_button.click
        sleep(1)
    end

    def preencher
    first_name_field.set 'Guilherme'
    last_name_field.set 'Albino dos Santos'
    email_field.set 'guibino94@hotmail.com'
    password_name_field.set '100894'
    mobile_field.set '97635-0455'
    country_field.select_option
    address_field.set 'Avenida Armando Italo Setti'
    adress2_field.set '417, bloco 1, ap 74'
    submit_button.click
    sleep(2)
    end
end