Grokkie::Application.routes.draw do
  get "profiles/index"
  get "profiles/edit"
  get "profiles/update"
  devise_for :users, controllers: {omniauth_callbacks: "omniauth_callbacks"}
  root to: "grokkies#index"

  resources :categories, only:[:show] do
    resources :skills, only:[:show]
  end

  resources :roadmaps do
    resources :comments, :resources
  end

  resources :profiles, only:[:index, :edit, :update]
end
