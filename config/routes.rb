Rails.application.routes.draw do
  resources :sales, only: [:new] do
    post :import, on: :collection
  end

  root 'sales#new'
end
