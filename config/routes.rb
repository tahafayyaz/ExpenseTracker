Rails.application.routes.draw do
  get 'pages/home'
  devise_for :employee

  devise_scope :employee do
    authenticated :employee do
      root  'pages#home', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
