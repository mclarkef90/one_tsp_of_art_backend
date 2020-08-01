Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
     resources :artists, only: [:index, :create, :update, :delete]
   end
  end
end
