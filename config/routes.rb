Rails.application.routes.draw do
  scope module: 'api' do
    namespace :v1 do
      resources :groups
      resources :employees
      resources :offices
      resources :floors
      resources :coords
      resources :locations
      resources :contracts
      resources :rooms
      resources :cities
    end
  end
end
