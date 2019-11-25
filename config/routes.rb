Rails.application.routes.draw do
  get 'countries/new'
  get 'countries/create'
  get 'countries/update'
  get 'countries/edit'
  get 'countries/destroy'
  get 'countries/index'
  get 'countries/show'
  devise_for :admins
  root to: 'sector#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
