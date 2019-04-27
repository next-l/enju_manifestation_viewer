Rails.application.routes.draw do
  resources :iiif_images, only: :show
end
