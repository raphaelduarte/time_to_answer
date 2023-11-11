class AddressAPI
  BASE_URI = 'https://brasilapi.com.br/api/cep/v1/'

  def self.fetch_data(cep)
    response = RestClient.get("#{BASE_URI}#{cep}")
    JSON.parse(response.body)
  end

  def self.pretty_print(cep_info)
    puts "Rua: #{cep_info['street']}"
    puts "Bairro: #{cep_info['neighborhood']}"
    puts "Cidade: #{cep_info['city']}"
    puts "Estado: #{cep_info['state']}"
    formatted_cep = cep_info['cep'][0..1] + '.' + cep_info['cep'][2..4] + '-' + cep_info['cep'][5..7]
    puts "CEP: #{formatted_cep}"
  end
end
