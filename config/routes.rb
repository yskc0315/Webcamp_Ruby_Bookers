Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  get '/books' => 'bookers#index', as: 'booker'
  post '/books' => 'bookers#create'
  get '/books/:id' => 'bookers#show', as: 'book'
  get '/books/:id/edit' => 'bookers#edit', as: 'edit_book'
  patch '/books/:id' => 'bookers#update', as: 'update_booker'
  delete '/books/:id' => 'bookers#destroy', as: 'destroy_booker'
end
