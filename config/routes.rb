Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/guitaramp" => "guitar_amplifiers#index"
  get "/guitaramp/:id" => "guitar_amplifiers#show"
  post "/guitaramp" => "guitar_amplifiers#create"
  patch "guitaramp/:id" => "guitar_amplifiers#update"
  delete "/guitaramp/:id" => "guitar_amplifiers#destroy"
end
