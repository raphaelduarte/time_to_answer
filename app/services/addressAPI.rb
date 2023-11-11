require 'rest-client'
require 'json'
class AddressAPI
  BASE_URI = 'https://brasilapi.com.br/api/cep/v1/'
  def self.fetch_data(cep)
    begin
      response = RestClient.get("#{BASE_URI}#{cep}")
    rescue RestClient::PermanentRedirect => e
      response = RestClient.get(e.response.headers[:location])
    end
    JSON.parse(response.body)
  end

  # Método privado para formatar o CEP
  def self.format_cep(cep)
    cep[0..1] + '.' + cep[2..4] + '-' + cep[5..7]
  end

  def self.format_endereco(cep_info) {
    rua: cep_info['street'],
    bairro: cep_info['neighborhood'],
    cidade: cep_info['city'],
    estado: cep_info['state'],
    cep: cep_info['cep']
    }

  def self.busca_cep
    cep = params[:cep]
    cep_formated = fetch_data(cep)
    @endereco_formatado = format_endereco(cep_formated)
  end

  private_class_method :format_cep
  end
end
