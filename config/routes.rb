Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  get 'change_log/index'
  root 'welcome#index'

  resources :notes
end
