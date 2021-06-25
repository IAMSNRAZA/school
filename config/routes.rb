Rails.application.routes.draw do
  root 'home#index'
    # root "students#index"

    resources :students
    resources :teacher
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
