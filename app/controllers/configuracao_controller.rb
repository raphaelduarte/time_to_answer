class ConfiguracaoController < ApplicationController
  before_action :authenticate_user!
  layout 'user_backoffice'

  def index
    dataJson = AddressAPI.fetch_data(params[:cep])
    @endereco_formatado = AddressAPI.format_endereco(dataJson)
  end
end
