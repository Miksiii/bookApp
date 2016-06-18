Rails.application.routes.draw do

  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/create'
  get 'books/edit'
  get 'books/update'
  get 'books/destroy'

  resources :books

  get 'welcome/index'
  root 'books#index'

end