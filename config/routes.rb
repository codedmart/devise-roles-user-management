DeviseRolesUserManagement::Application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"} 
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/logout' => 'devise/sessions#destroy'
  end
  resources :token_authentications, :only => [:create, :destroy]
  resources :user, :controller => "user"
  root :to => "dashboard#index"
end
