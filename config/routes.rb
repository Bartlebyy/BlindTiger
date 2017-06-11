Rails.application.routes.draw do
  resource :room, only: [:new, :create, :update] do
    get :join
  end

  get 'static/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static#home"
end
