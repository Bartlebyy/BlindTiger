Rails.application.routes.draw do
  resource :room, only: [:show, :new, :edit, :create, :update]

  resource :game, only: [:show, :new, :create]

  get 'static/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static#home"
end
