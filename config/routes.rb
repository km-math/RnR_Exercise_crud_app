Rails.application.routes.draw do
  root 'application#intro'

  get 'staff/new'
  resources :staff
  #root 'staff#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
