Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/page", to: "pages#index", as: "homepage"

  get "/page200", to: "pages#show"

  get "/calculator", to: "calculator#add"



  post "/student", to: "student#create"

  get "/student/:id", to: "student#show"

  post "/pokemon/:name/:type", to: "pokemon#create"



  get "/redirectfrom", to: "redirect#from"
  get "/redirectedto", to: "redirect#to"

  get "/books", to: "books#index"
  get "/books/:id", to: "books#show"
  post "/books", to: "books#create"
  put "/books/:id", to: "books#update"
  delete "books/:id", to: "books#destroy"
end
