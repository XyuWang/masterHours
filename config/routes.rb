MasterHours::Application.routes.draw do
  root "home#index"
  devise_for :users

  resources :projects do
    resources :work_days
  end
end
