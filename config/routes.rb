Vets::Application.routes.draw do
  resources :deseases

  resources :user_deseases

  resources :user_animal_types

  resources :user_animals

  resources :animals

  resources :animal_types

  resources :workplaces

  resources :roles

  resources :jobtitles

  resources :user_workplaces

  resources :user_professions

  resources :countries

  resources :user_addresses

  resources :phones

  resources :user_profiles

  resources :tadresses

  root "home#main"
  get "home/join"
  get "home/team"
  get "home/main"
  get "home/contact"
  get "home/privacy"
  devise_for :users

end
