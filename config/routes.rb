Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :admin, skip: [:registrations, :password], controllers: {
    sessions: "admin/admins/sessions"
  }
  
  namespace :admin do
    root to: "homes#index"
    resources :genres, only: [:create, :index, :edit, :update]
    resources :items, only: [:new, :create, :index, :show, :edit, :update]
    resources :customers, only: [:index, :show, :edit, :update]
  end
  
  scope module: :public do
    root to: "homes#top"
    devise_for :customers, skip: [:password], controllers: {
      sessions: "public/devise/sessions",
      registrations: "public/devise/registrations",
    }
    get "homes/about" => "homes#about"
    resources :items, only: [:index, :show]
    resources :addresses, only: [:index, :create, :edit, :update, :destroy]
    resources :customers, only: [:show] do
      collection do
        get "unsubscribe" => "customers#unsubscribe"
        patch "withdraw" => "customers#withdraw"
      end
    end
  end
end
