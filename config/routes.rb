Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :posts do
      member do
        post "like" => "posts#like"
        post "unlike" => "posts#unlike"
      end
    end

   root "posts#index"
end
