require 'rest-client'
require 'json'

uri = 'https://brasilapi.com.br/api/cep/v1/'
cep = 24436320

response = RestClient.get "#{uri}#{cep}"

cep = JSON.parse(response.body)["cep"]
state = JSON.parse(response.body)["state"]
city = JSON.parse(response.body)["city"]
neighborhood = JSON.parse(response.body)["neighborhood"]
street = JSON.parse(response.body)["street"]

puts "Rua: #{street}"
puts "Bairro: #{neighborhood}"
puts "Cidade: #{city}"
puts "Estado: #{state}"
puts "CEP: #{cep[0..1]}.#{cep[2..4]}-#{cep[5..7]}"

