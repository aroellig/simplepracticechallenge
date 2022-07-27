Rails.application.routes.draw do
  get 'api/Doctors'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :appointments, only: [:index, :create]
    resource :doctors
  end
end
