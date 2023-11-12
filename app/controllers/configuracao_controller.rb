require 'rest-client'
require 'json'
class ConfiguracaoController < ApplicationController
  before_action :authenticate_user!
  layout 'user_backoffice'

  def index

  end

  def busca_cep
    @endereco_formatado = AddressAPI.fetch_data(params[:cep])
    render :index
  end
end
