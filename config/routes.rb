Rails.application.routes.draw do
  devise_for :users
  resources :journeys do
  resources :claims, only: [:new, :create]
end  

	
	get 'pages/inventure'
  get 'creator' => "journeys#creator"
  get 'creator_history' => "claims#creator_history"
  get 'explorer_history' => "claims#explorer_history"

end
