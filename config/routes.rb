Rails.application.routes.draw do

  root to: 'events#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :events do
    member do
      get :estimate_cost
    end
  end

end
