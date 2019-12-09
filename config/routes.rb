Rails.application.routes.draw do
  get 'homes/index'
  devise_for :admins, controllers: { sessions: 'admins/sessions', :registrations => 'admins/registrations' }
  root to: 'sectors#index'
  
  resources :admins do
  	get '/dashboard', to: 'admins#dashboard', as: 'dashboard'
  end
  
  resources :countries do
  	resources :sectors, :sub_sectors, :admins, :companies, :products
  end

  resources :sectors do
    resources :sub_sectors, :admins, :companies, :products
  end

  resources :sub_sectors do
  	resources :admins, :companies, :products
 	end

 	resources :companies do
 		resources :products
 	end

 	resources :products
  
  get '/search' => 'companies#search', :as => 'search_companies'
end
