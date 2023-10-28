class AdminsBackoffice::WelcomeController < AdminsBackofficeController
  def index
    @admins = Admin.all
  end
end
