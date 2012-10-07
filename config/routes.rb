BaData::Application.routes.draw do

  resources :lists, :only => [:index, :show], :defaults => { :format => :json }
  resources :beers, :only => [:show], :defaults => { :format => :json }

  root :to => "lists#index"
end
