Tablero::Application.routes.draw do

  resources :teams do
  resources :members
  end

   resources :questions do
  resources :answers
  end

  resources :users

  resources :results

  #resources :answers

  #resources :questions

  #resources :members

  resources :categories

  resources :rols

  resources :awards

  resources :winners

get "pages/index"
resources :teams
resources :pages
root :to => 'pages#index'
end