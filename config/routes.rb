Rails.application.routes.draw do
  devise_for :employees, controllers: { registrations: 'employees/registrations' }
  get 'pages/home'
  root to: "pages#home"
end
