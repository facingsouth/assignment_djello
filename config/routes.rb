Rails.application.routes.draw do


  # scope :api do
    # scope :v1 do
      devise_for :users, controllers: { sessions: "users/sessions" }
  #   end
  # end

  resources :users, only: [:index]
  resources :user_boards

  delete "/user_boards(.:format)", to: "user_boards#destroy"

  resources :boards do
    resources :lists 
    resources :cards
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'djello#index'

end
