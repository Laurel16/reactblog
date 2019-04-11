Rails.application.routes.draw do
  root to: 'pages#home'
  get "/post/new", to:"pages#home"
  get "/post/:id", to:"pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# API routing
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :posts, only: [ :index, :show, :create ]
    end
  end

end
