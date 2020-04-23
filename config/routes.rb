Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/page", to: "pages#index", as: "homepage"

  get "/page200", to: "pages#show"

  get "/calculator", to: "calculator#add"



  post "/student", to: "student#create"

  get "/student/:id", to: "student#show"
end
