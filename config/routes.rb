Instagram::Application.routes.draw do

  resources :users do
  end

  get "/" => "instagram#index"
  match '/login', to: 'users#login', via: "post"
  root "instagram#index"
end
