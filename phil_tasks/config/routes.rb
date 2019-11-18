Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'welcome#index'
  get '/life_goals', to: 'life_goals#index'
  get '/life_goals/new', to: 'life_goals#new'
  post '/life_goals', to: 'life_goals#create'
  get '/life_goals/:id', to: "life_goals#show"
  get '/life_goals/:id/edit', to: "life_goals#edit"
  patch '/life_goals/:id', to: "life_goals#update"
  delete '/life_goals/:id', to: "life_goals#destroy"
end
