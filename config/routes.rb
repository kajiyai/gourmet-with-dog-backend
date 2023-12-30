Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :admin do
    resources :users, only: [:index] # 管理者用のユーザー一覧
  end
  get 'hello_world', to: 'hello_world#index'
end
