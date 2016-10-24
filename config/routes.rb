Rails.application.routes.draw do
  root to: redirect('/info')
  get 'info' => 'pages#info'
  resources :geek_women
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
