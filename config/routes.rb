Rails.application.routes.draw do
  get 'configuracao/index'
  get 'enderecos/busca_cep', to: 'enderecos#busca_cep'
  resources :enderecos
  namespace :profiles do
    namespace :case_use do
      resources :pacientes
    end
  end
  devise_for :admins
  devise_for :users

  namespace :site do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    namespace :pacientes do
      resources :welcomes
    end
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end



  get 'inicio', to: 'site/welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'site/welcome#index'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
