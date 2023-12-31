Rails.application.routes.draw do
  resources :dogs
  resources :dog_breeds, only: [:index]
  namespace :v1, { format: 'json' } do
    mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      registrations: "v1/auth/registrations"
    }
  end
  namespace :admin do
    resources :users, only: [:index] # 管理者用のユーザー一覧
  end
  get 'hello_world', to: 'hello_world#index'
end
