Rails.application.routes.draw do
  resources :coach_team_nns
  resources :coach_teams
  resources :coaches
  resources :teams
  resources :players
  resources :countries
  resources :languages

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
