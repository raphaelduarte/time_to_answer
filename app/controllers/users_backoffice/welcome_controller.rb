class UsersBackoffice::WelcomeController < UsersBackofficeController
  def index
    @users = User.all
    @email = Email.all
  end
end
