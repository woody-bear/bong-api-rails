Rails.application.routes.draw do
  get '/', to: 'post#index'

  resources :post do
    get 'toggle_use_yn', on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
