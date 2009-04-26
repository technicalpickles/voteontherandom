ActionController::Routing::Routes.draw do |map|
  map.resources :zomgs

  map.resources :battles, :member => { :vote => :post }
  map.resources :results

  map.wtf '/wtf', :controller => 'pages', :action => 'wtf'
  map.root :battles
end
