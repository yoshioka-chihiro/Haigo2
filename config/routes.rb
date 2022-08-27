Rails.application.routes.draw do

  # 顧客用
  # URL /customers/sign_in …
  # パスワードの変更は不要だからスキップ
  devise_for :members,skip:[:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # 管理者用
  # URL /admin/sign_in …
  # パスワードの変更・管理者側の登録は不要だからスキップ
  devise_for :admin,skip:[:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  root to: 'public/homes#top'

  scope module: :public do
    resources :recipes, only:[:index, :show, :edit, :create, :update, :destroy]
    resources :material_genres, only:[:new, :index, :edit]
    resources :materials, only:[:index, :show]
    resources :members, only:[:index, :show, :edit]
  end

  namespace :admin do
    get '/' => 'homes#top'
    resources :recipe_genres, only: [:index, :edit, :update, :create]
    resources :wholesales, only: [:index, :edit, :update, :create]
    resources :end_users, only: [:index, :edit, :update, :create]
    resources :material_genres, only:[:new, :index, :edit]
    resources :allergies, only:[:index, :edit, :update, :create]
    resources :additives, only:[:index, :edit, :update, :create]
    resources :materials, only:[:index, :edit, :show, :new]
    resources :members, only:[:index, :show, :edit]
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
