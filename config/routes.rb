Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root to: 'homes#top'
  get '/books', to: 'books#index', as: 'books'
  get '/books/:id', to: 'books#show', as: 'book'
  get '/books/:id/edit', to: 'books#edit', as: 'edit_book'
  delete '/books/:id', to: 'books#destroy', as: 'destroy_book'
  post '/books', to: 'books#create', as: 'create_books'
  patch '/books/:id', to: 'books#update', as: 'update_book'
end