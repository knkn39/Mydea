Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  
  root 'notes#index'
  # Defines the root path route ("/")
  # root "posts#index"

  get 'notes/graphic' => 'notes#graphic'
  get 'notes/typography' => 'notes#typography'
  get 'notes/ui' => 'notes#ui'

  get '/note/graphic', to: "notes#graphic"
  get '/note/typography', to: "notes#typography"
  get '/note/ui', to: "notes#ui"

  resources :notes do
    resources :likes, only: [:create, :destroy]
  end
  resources :users, only: [:index,:show,:edit,:update] do
    resource :relationships, only:[:create, :destroy]
    get 'follows' => 'relationships#follower'
    get 'followers' => 'relationships#followed'
  end

end
