Rails.application.routes.draw do
  get 'authors/index'
  get 'authors/show'
  get 'authors/new'
  get 'authors/create'
  get 'authors/edit'
  get 'authors/update'
  get 'authors/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
