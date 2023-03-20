Rails.application.routes.draw do
  # resources :crew_members
  resources :productions, only: %i[index show create update destroy]

  get '/cookie_click', to: 'sessions#click'
end
