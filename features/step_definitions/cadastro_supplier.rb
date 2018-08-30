Dado("que eu estou na pagina inicial de login administrativo") do
    @home = Home.new
    @home.load
    sleep(5)
  end
  
  Quando("eu realizo o login utilizando {string} e {string}") do |user, pass|
    @home.user_fill(user)
    @home.pass_fill(pass)
    @home.login_enter
    sleep(5)
  end
  
  Quando("crio um novo supplier") do
    @adm = Admin.new
    @adm.suppliers
    @adm.preencher
  end
  
  Então("verifico se foi cadastrado com sucesso") do
    @texto = find('h4[class="ui-pnotify-title"]')
    expect(@texto.text).to eql 'CHANGES SAVED!'
  end