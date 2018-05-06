Rails.application.routes.draw do
  resources :androids
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get 'androids/:id/sold' => 'androids#sold'
   end
