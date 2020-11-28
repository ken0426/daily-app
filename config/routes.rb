Rails.application.routes.draw do
  root to: 'contents#index'
  resources :contents, only: [:index, :new, :create, :edit, :update, :destroy, :show]
end
