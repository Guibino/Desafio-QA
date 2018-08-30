Dado("que eu cadastre um novo post com os seguintes dados:") do |dados|
    @request = dados.rows_hash
  end
  
  Quando("faço a requisição para o post") do
    @resultado = HTTParty.post(
    'http://fakerestapi.azurewebsites.net/swagger/ui/index#!/Books/Books_Post',
    body: @request.to_json
    )
  end
  
  Então("o código de resposta será {string}") do |codigo|
    expect(@resultado.response.code).to eql codigo
    puts @resultado.code
    puts codigo
  end