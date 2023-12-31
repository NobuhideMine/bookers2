Rails.application.routes.draw do
  
 
  
  
  devise_for :users
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  
   resources :books, only: [:index,:show,:edit,:create,:destroy,:update] do
    resources :book_comments, only: [:create, :destroy]
   end
   resources :users
   
   
   get "/home/about" => "homes#about", as: "about"
end
