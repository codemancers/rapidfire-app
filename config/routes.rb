Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :session, only: [:new, :create, :destroy]

  mount Rapidfire::Engine => "/rapidfire"
  root to: "rapidfire/question_groups#index"
end
