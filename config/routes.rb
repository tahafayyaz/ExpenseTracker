Rails.application.routes.draw do
  devise_for :employees, controllers: { registrations: 'employees/registrations' }
  devise_for :managers, controllers: { registrations: 'managers/registrations' }
  get 'pages/home'
  root to: "pages#home"
end
