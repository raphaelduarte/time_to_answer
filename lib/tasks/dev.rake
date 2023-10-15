namespace :dev do

  DEFAULT_PASSWORD = "abc"

  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      %x(rails db:migrate)
      %x(rails dev:add_default_admin)
    else
      puts "Você não está no ambiente de desenvolvimento!"
    end
  end

  desc "Adicionando administrador padrão"
  task add_default_admin: :environment do
    Admin.create!(
      email: 'admin@admin.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

  desc "Adicionando usuário padrão"
  task add_default_user: :environment do
    User.create!(
      email: 'user@user.com',
      password: DEFAULT_PASSWORD,
      password_confirmation: DEFAULT_PASSWORD
    )
  end

end
