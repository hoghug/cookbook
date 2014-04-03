Recipe::Application.routes.draw do
  match('/', {:via => :get, :to => 'instructions#index'})
  match('instructions', {:via => :get, :to => 'instructions#index'})
  match('instructions/new', {:via => :get, :to => 'instructions#new'})
  match('instructions', {:via => :post, :to => 'instructions#create'})
  match('instructions/:id', {:via => :get, :to => 'instructions#show'})
  match('instructions/:id/edit', {:via => :get, :to => 'instructions#edit'})
  match('instructions/:id', {:via => [:patch, :put], :to => 'instructions#update'})
  match('instructions/:id', {:via => :delete, :to => 'instructions#destroy'})

  match('tags', {:via => :get, :to => 'tags#index'})
  match('tags/new', {:via => :get, :to => 'tags#new'})
  match('tags', {:via => :post, :to => 'tags#create'})
  match('tags/:id', {:via => :get, :to => 'tags#show'})
  match('tags/:id/edit', {:via => :get, :to => 'tags#edit'})
  match('tags/:id', {:via => [:patch, :put], :to => 'tags#update'})
  match('tags/:id', {:via => :delete, :to => 'tags#destroy'})
end
