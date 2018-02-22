Rails.application.routes.draw do
  resources :departments, except: :show do
    resources :employees
  end
  
  
  devise_for :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'departments#index';
end
