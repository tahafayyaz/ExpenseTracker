Rails.application.routes.draw do
  get 'pages/home'
  devise_for :employee
  root to: "pages#home"

end
