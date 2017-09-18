Rails.application.routes.draw do
  get 'static/home'
  root to: "static#home"

  resource :room, only: [:show, :new, :edit, :create, :update]

  resource :game, only: [:show, :new, :create]

  resource :player, only: [:destroy]

  mount ActionCable.server, at: '/cable'
end
