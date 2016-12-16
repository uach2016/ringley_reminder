Rails.application.routes.draw do
	  root to: 'charges#index'

  get 'reminder/index'

  resources :charges
  resources :reminder
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
