BaData::Application.routes.draw do

  resources :lists, :only => [:index, :show], :defaults => { :format => :json }
  resources :beers, :only => [:show], :defaults => { :format => :json }

  get "/client", :controller => "pages", :action => "client"

  root :to => "lists#index"
end
