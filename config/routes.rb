Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do 
  	namespace 'v1' do
  		resources :players, only: [:index, :show]
      resources :matches
      get '/tournament/matches/:name', to: 'matches#showTour'
      get '/players/find-matches/:name', to: 'matches#showPlayer'
      get '/players/find-name/:name', to: 'players#showName'
      get 'groups', to: 'groups#index'

      post "setups/init" => "setups#create"
  	end 
  end
  
end
