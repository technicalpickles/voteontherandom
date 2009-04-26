ActionController::Routing::Routes.draw do |map|
  map.resources :battles, :member => { :vote => :post }
  map.resources :results

  map.root :battles
end
