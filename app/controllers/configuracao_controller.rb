class ConfiguracaoController < ApplicationController
  before_action :authenticate_user!
  layout 'user_backoffice'

  def index
  end
end
