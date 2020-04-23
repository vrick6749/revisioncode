Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/page", to: "pages#index", as: "homepage"

  get "/page/:id", to: "pages#show"
end
