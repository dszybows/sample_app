SampleApp::Application.routes.draw do

  # match '/about',   :to => 'pages#about'
  # match actually /about to the action "about" on pages_controller but also by default creates named ro
  # about_path => '/about'
  # about_url  => 'http://localhost:3000/about'
  
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'

  match '/signup',  :to => 'users#new'
  get "users/new"

  root :to => 'pages#home'
  
end
