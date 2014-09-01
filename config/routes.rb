Rails.application.routes.draw do

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
end

