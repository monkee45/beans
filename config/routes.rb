Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root "houses#index"
    get 'houses' => 'houses#index'
    post 'houses' => 'houses#create'
    get 'houses/new' => 'houses#new', as: 'new_house'
    get 'houses/:id/edit' => 'houses#edit', as: 'edit_house'
    get 'houses/:id' => 'houses#show', as: 'house'
    patch 'houses/:id' => 'houses#update'
    put 'houses/:id' => 'houses#update'
    delete 'houses/:id' => 'houses#destroy'

end
