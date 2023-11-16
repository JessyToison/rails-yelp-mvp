Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:edit, :update, :destroy]
  # Pour créer une review, je dois connaitre l'id d'un restaurant
  # On peut edit, update ou destroy une review sans avoir besoin de connaitre le restaurant (car la review existe déjà)
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
