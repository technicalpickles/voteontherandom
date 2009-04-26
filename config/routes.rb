ActionController::Routing::Routes.draw do |map|
  map.resources :zomgs

  map.resources :battles, :member => { :vote => :post }
  map.resources :results
  map.resources :the_randoms

  map.wtf '/wtf', :controller => 'pages', :action => 'wtf'
  map.root :battles
end
