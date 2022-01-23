Rails.application.routes.draw do
  resources :uploads
  devise_for :users
  # get 'site/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "site#index"

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
