Rails.application.routes.draw do
  get 'homes/index'
  get 'home/index'
  devise_for :admins, controllers: { sessions: 'admins/sessions', :registrations => 'admins/registrations' }
  root to: 'countries#show'
  
  resources :admins do
  	resources :companies do
  		resources :products
  	end
  end
  
  resources :countries do
    resources :sectors do
      resources :sub_sectors do
      resources :companies do
        resources :products
        end
      end
    end
  end

  resources :companies
  resources :sectors
end