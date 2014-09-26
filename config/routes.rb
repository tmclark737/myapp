Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
   resources:projects do
    resources:occupants
  end
  

 resources:projects do
  resources:zones
end


 resources:occupants do
  resources:zones
end

 root 'welcome#index'
 get '/sfenvironment', to: redirect('/#')
 get '/benchmarking', to: 'welcome#benchmarking'
end


