Rails.application.routes.draw do
  resources :criteria
  resources :categories
 	#root "pages#home", as: 'home'
end
