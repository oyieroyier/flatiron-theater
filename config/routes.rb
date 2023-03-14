Rails.application.routes.draw do
  # resources :crew_members
  resources :productions, only: %i[index show create update]
end
