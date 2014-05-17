Rails.application.routes.draw do
  devise_for :users

  mount Rapidfire::Engine => "/rapidfire"
  root to: "rapidfire/question_groups#index"
end
