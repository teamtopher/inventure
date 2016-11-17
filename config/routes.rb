Rails.application.routes.draw do
  devise_for :users
  resources :journeys do
  resources :claims
end  

	root 'pages#inventure'
	get 'pages/inventure'
	get 'pages/choose'
  get 'pages/about'
  get 'creator' => "journeys#creator"
  get 'creator_history' => "claims#creator_history"
  get 'explorer_history' => "claims#explorer_history"
  get 'scoreboard' => "claims#scoreboard"
    get 'profile' => "claims#profile"



end
