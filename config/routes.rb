Rails.application.routes.draw do
  resources :artworks
  resources :artists
  namespace :api do
   namespace :v1 do
     resources :artists, only: [:index, :create, :update, :destroy] do
       resources :artworks, only: [:create]
     end
     resources :artworks, only: [:index, :update, :destroy]
     get '/artworks/randomThree', to: 'artworks#randomThree'
   end
  end
end
