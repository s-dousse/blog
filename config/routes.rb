Rails.application.routes.draw do
  devise_for :users
  root "articles#index"
  # root to: "home#index"

  resources :articles do
    resources :comments # nested resource
  end
  
  # Prefix
  # ROOT:         get   "/articles", to: "articles#index"
  # articles      get   "/articles/:id", to: "articles#show"
  # new_article   get   "articles/new(.:format)", to: "articles#new"
  #               post  "/articles(.:format)", to: "articles#create"
  # edit_article  get   "/articles/:id/edit(.:format)", to: ""articles#edit"
  #               patch  "/articles/:id(.:format)", to: "articles#update"
  #               delete "/articles/:id(.:format)", to: "articles#destroy"
end