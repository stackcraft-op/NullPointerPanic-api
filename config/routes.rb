Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  namespace :api do
    post "register", to: "users#create"
    post "login", to: "sessions#create"
    get "profile", to: "profiles#show"
    patch "profile", to: "profiles#update"
    patch "profile/status_text", to: "profiles#update_status_text"
    get "flashcards/daily", to: "flashcards#daily"
    get "flashcards", to: "flashcards#index"
    post "answer_options/:id/submit", to: "answer_options#submit"
    get "rankings/overall", to: "rankings#overall"
    get "rankings/weekly", to: "rankings#weekly"
    get "topics/progress", to: "topics#progress"
    get "rankings/by_state", to: "rankings#by_state"
    get "topics/:id/flashcards", to: "topics#flashcards"
    post "flashcards/:flashcard_id/check", to: "flashcard_checks#create"
    post "quiz", to: "quiz#create"
    post "answer_options/:id/quiz_submit", to: "answer_options#quiz_submit"
    get "shop/items", to: "shop_items#index"
    post "shop/items/:id/purchase", to: "shop_items#purchase"
  end
end
