ActionController::Routing::Routes.draw do |map|
  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
   map.namespace :admin do |admin|
     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
     #admin.resources :products
#map.resources :model_id, :collection => {:browse => :get}, :member => {:select => :post}
      admin.resources :classificacoes, :collection => { :browse => :get }, :active_scaffold => true
      admin.resources :extras, :collection => { :browse => :get }, :active_scaffold => true
      admin.resources :materias, :collection => { :browse => :get }, :active_scaffold => true
      admin.resources :noticias, :collection => { :browse => :get }, :active_scaffold => true
      admin.resources :series, :collection => { :browse => :get }, :active_scaffold => true
      admin.resources :temas, :collection => { :browse => :get }, :active_scaffold => true
      admin.resources :cursos, :collection => { :browse => :get }, :active_scaffold => true
      admin.resources :users, :collection => { :browse => :get }, :active_scaffold => true
      admin.resources :videos, :collection => { :browse => :get }, :active_scaffold => true
      admin.resources :aulas, :collection => { :browse => :get }, :active_scaffold => true
      admin.resources :planos, :collection => { :browse => :get }, :active_scaffold => true

      admin.root  :controller => :application, :action => "home"
      admin.home  "home", :controller => :application, :action => "home"
   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.root :controller => "home"


  map.forgot    '/site/forgot', :controller => 'users', :action => 'forgot'
  map.reset     'reset/:reset_code', :controller => 'users', :action => 'reset'

  map.logout '/site/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/site/login', :controller => 'sessions', :action => 'new'
  #map.register '/site/register', :controller => 'users', :action => 'create'
  map.signup '/site/assinar', :controller => 'assinar', :action => 'index'
  map.register '/site/assinar/cadastro', :controller => 'assinar', :action => 'cadastro'

  map.resources :users
  map.resource :session


  map.resources :aulas
  map.resources :noticias
  map.resources :assinar, :collection => { :cadastro => :get, :pagamento => :get }
  map.resources :empresa, :collection => {:central_atendimento => :get,
                                          :como_funciona  => :get,
                                          :faq => :get,
                                          :formas_pagamento => :get,
                                          :politica_privacidade => :get,
                                          :sobre => :get}

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
