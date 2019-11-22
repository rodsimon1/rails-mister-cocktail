Rails.application.routes.draw do
  # get 'cocktails', to: 'cocktails#index', as: :cocktails
  # get 'cocktails/:id', to: 'cocktails#show', as: :cocktail
  # get 'cocktails/new', to: 'cocktails#new', as: :new_cocktail
  # post 'cocktails', to: 'cocktails#create'
  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[new create]
  end
    resources :doses, only: %i[destroy]

end
