Rails.application.routes.draw do

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
 get '/google20f2c5dc8a027e79.html', to: 'welcome#google20f2c5dc8a027e79.html'
end


