Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'sessions#index'


  resources :sessions do
    collection do
      get 'index'
      post 'login'
      put 'logout'
    end
  end
  resources :students
  resources :subjects

end
