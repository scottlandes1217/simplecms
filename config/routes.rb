Rails.application.routes.draw do
  
  root 'demo#index'

  get 'demo/index'

  #Default Route Maybe be discountinued in future releases of rails
  #get ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
