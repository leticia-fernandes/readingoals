Rails.application.routes.draw do
  resources :reading_goals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'reading_goals#index'
end
