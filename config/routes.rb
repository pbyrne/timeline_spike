TimelineSpike::Application.routes.draw do
  resources :filter_users
  resources :filter_actions
  resources :entries

  root "welcome#index"
end
