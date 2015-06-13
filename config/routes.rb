Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]

  mount Rapidfire::Engine => "/rapidfire"
  root to: "rapidfire/question_groups#index"
end
