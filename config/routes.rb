Instagram::Application.routes.draw do

  resources :users do
  	resources :pictures
  end

  get "/" => "instagram#index"
  get "/closeSession" => "instagram#closeSession"
  match "/" => "instagram#index", via: "post"
  match '/login', to: 'users#login', via: "post"
  root "instagram#index"
end
