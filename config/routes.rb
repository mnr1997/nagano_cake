Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :admin, skip: [:registrations, :password], controllers: {
    sessions: "admin/admins/sessions"
  }
  
  namespace :admin do
    root to: "homes#index"
  end
  
  scope module: :public do
    root to: "homes#top"
    devise_for :customers, skip: [:password], controllers: {
      sessions: "public/devise/sessions",
      registrations: "public/devise/registrations",
    }
    get "homes/about" => "homes#about"
  end
end
