Blogger::Application.routes.draw do

  #match 'articles/confim' , :controller => 'article' , :action => 'delete'
  
  #match '/edit', to: 'articles#edit' , via: [:get, :post]
  root to: 'articles#index'
  resources :articles


end
