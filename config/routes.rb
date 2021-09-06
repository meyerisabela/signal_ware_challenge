Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tickets, only: :create
      get '/tags/send_higher_count', to: 'tags#send_higher_count'
    end
  end
end
