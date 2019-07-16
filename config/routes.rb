Rails.application.routes.draw do

  root 'users#index'

  resources :users do
    resources :tags, only: %i[create destroy new]
  end
end
