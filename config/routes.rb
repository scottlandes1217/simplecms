Rails.application.routes.draw do
  
  get 'pages/index'
  get 'pages/show'
  get 'pages/new'
  get 'pages/edit'
  get 'pages/delete'
  get 'sections/index'
  get 'sections/show'
  get 'sections/new'
  get 'sections/edit'
  get 'sections/delete'
  root 'demo#index'

  resources :subjects do
    member do
      get :delete
    end
  end

  get 'demo/index'

  #Default Route Maybe be discountinued in future releases of rails
  #get ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
