BaData::Application.routes.draw do

  resources :lists, :only => [:index, :show]

  root :to => "lists#index"
end
