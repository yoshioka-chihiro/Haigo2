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
  
  scope module: public do
    
    resources :recipes, only:[:index, :show, :edit, :create, :update, :destroy]
    
  end

  namespace :public do
    get 'recipes/index'
    get 'recipes/show'
    get 'recipes/new'
    get 'recipes/edit'
  end
  namespace :admin do
    get 'material_genres/new'
    get 'material_genres/index'
    get 'material_genres/edit'
  end
  namespace :admin do
    get 'allergies/index'
    get 'allergies/edit'
  end
  namespace :admin do
    get 'additives/index'
    get 'additives/edit'
  end
  namespace :public do
    get 'materials/index'
    get 'materials/show'
  end
  namespace :admin do
    get 'materials/index'
    get 'materials/edit'
    get 'materials/show'
    get 'materials/new'
  end
  namespace :public do
    get 'homes/top'
  end
  namespace :admin do
    get 'homes/top'
  end


  namespace :public do
    get 'members/index'
    get 'members/show'
    get 'members/edit'
  end
  namespace :admin do
    get 'members/index'
    get 'members/show'
    get 'members/edit'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
