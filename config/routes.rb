Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
  # patch 'songs/:id', to: 'songs#update'
  resources :artists, only: [:index, :show, :new, :create, :edit, :update]
  # patch 'artists/:id', to: 'artists#update'
  resources :genres, only: [:index, :show, :new, :create, :edit, :update]

end
