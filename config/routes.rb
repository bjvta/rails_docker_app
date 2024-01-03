Rails.application.routes.draw do
  root 'home#index'
  post "/increment_async", to: "home#increment_async"
  get "/increment_async", to: "home#increment_async"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
