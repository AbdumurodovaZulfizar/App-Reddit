Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users
  get "articles/index"
  get "/users/sign_out", to: "devise/sessions#destroy"
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
