Grokkie::Application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"} 
  resources :user, only:[:index] do
  	resources :profiles, only:[:edit, :update]
  end
  root to: "grokkies#index"

  resources :categories, only:[:show] do
    resources :skills, only:[:show]
  end

  resources :roadmaps do
    resources :comments, :resources
  end

  
end
