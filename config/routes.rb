Rails.application.routes.draw do
  #resources :connection_tests
  namespace :api do
    namespace :v1 do
      resources :connection_tests
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
