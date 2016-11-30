Rails.application.routes.draw do
    resources :enquirys, only: [:new, :create, :index, :destroy, :edit] do
    resources :steps, only: [:show, :update], controller: 'enquirys/steps'
  end
 
  root to: 'enquirys#index'

end
