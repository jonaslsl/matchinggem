Rails.application.routes.draw do
  resources :match_criteria
  resources :match_categories
 	#root "pages#home", as: 'home'
end
