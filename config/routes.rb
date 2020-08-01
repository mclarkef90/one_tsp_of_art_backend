Rails.application.routes.draw do
  resources :artworks
  resources :artists
  namespace :api do
   namespace :v1 do
     resources :artists, only: [:index, :create, :update, :delete]
     resources :artworks, only: [:index, :create, :update, :delete]
   end
  end
end
