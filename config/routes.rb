Rails.application.routes.draw do
  get 'welcome/index'

  resources: 'welcome#index'
end
