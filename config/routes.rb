ActionController::Routing::Routes.draw do |map|
  map.resources :battles, :member => { :vote => :post }

  map.root :battles
end
