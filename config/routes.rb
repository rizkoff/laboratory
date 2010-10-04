Laboratory::Application.routes.draw do
  resources :fvalues

  # resources :factors


  resources :specimen do
    resources :factors
    resources :shipments
  end
  # resources :shipments

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  root :to => 'pages#home'
  # match ':controller(/:action(/:id(.:format)))'
end
