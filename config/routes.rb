Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  get '/current_user', to: 'current_user#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  scope :api do
    scope :v1 do
      devise_for :users, path: '', path_names: {
        sign_in: 'login',
        sign_out: 'logout',
        registration: 'signup'
      }, :controllers => { 
        :registrations => 'api/v1/users/registrations', 
        :sessions => 'api/v1/users/sessions'
      }
    end
  end
  namespace :api, defaults: { format: :json } do
    # actual implementation is slightly different than this
    # I set the specific controllers, as while these inherit from devise
    # They do everything the same, except for save the login session.
    namespace :v1 do
      resources :users
    end
  end
end
