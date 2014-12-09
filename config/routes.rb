Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }

  # Routes for the User resource:
  # CREATE
  get('/users/new', { :controller => 'users', :action => 'new' })
  get('/create_user', { :controller => 'users', :action => 'create' })

  # READ
  get('/users', { :controller => 'users', :action => 'index' })
  get('/users/:id', { :controller => 'users', :action => 'show' })

  # UPDATE
  get('/users/:id/edit', { :controller => 'users', :action => 'edit' })
  get('/update_user/:id', { :controller => 'users', :action => 'update' })

  # DELETE
  get('/delete_user/:id', { :controller => 'users', :action => 'destroy' })
  #------------------------------

  # Routes for the Meeting resource:
  # CREATE
  get('/meetings/new', { :controller => 'meetings', :action => 'new' })
  get('/create_meeting', { :controller => 'meetings', :action => 'create' })

  # READ
  get('/meetings', { :controller => 'meetings', :action => 'index' })
  get('/meetings/:id', { :controller => 'meetings', :action => 'show' })

  # UPDATE
  get('/meetings/:id/edit', { :controller => 'meetings', :action => 'edit' })
  get('/update_meeting/:id', { :controller => 'meetings', :action => 'update' })

  # DELETE
  get('/delete_meeting/:id', { :controller => 'meetings', :action => 'destroy' })
  #------------------------------

  # Routes for the Location resource:
  # CREATE
  get('/locations/new', { :controller => 'locations', :action => 'new' })
  get('/create_location', { :controller => 'locations', :action => 'create' })

  # READ
  get('/locations', { :controller => 'locations', :action => 'index' })
  get('/locations/:id', { :controller => 'locations', :action => 'show' })

  # UPDATE
  get('/locations/:id/edit', { :controller => 'locations', :action => 'edit' })
  get('/update_location/:id', { :controller => 'locations', :action => 'update' })

  # DELETE
  get('/delete_location/:id', { :controller => 'locations', :action => 'destroy' })
  #------------------------------

  # Routes for the Function resource:
  # CREATE
  get('/functions/new', { :controller => 'functions', :action => 'new' })
  get('/create_function', { :controller => 'functions', :action => 'create' })

  # READ
  get('/functions', { :controller => 'functions', :action => 'index' })
  get('/functions/:id', { :controller => 'functions', :action => 'show' })

  # UPDATE
  get('/functions/:id/edit', { :controller => 'functions', :action => 'edit' })
  get('/update_function/:id', { :controller => 'functions', :action => 'update' })

  # DELETE
  get('/delete_function/:id', { :controller => 'functions', :action => 'destroy' })
  #------------------------------

  # Routes for the Industry resource:
  # CREATE
  get('/industries/new', { :controller => 'industries', :action => 'new' })
  get('/create_industry', { :controller => 'industries', :action => 'create' })

  # READ
  get('/industries', { :controller => 'industries', :action => 'index' })
  get('/industries/:id', { :controller => 'industries', :action => 'show' })

  # UPDATE
  get('/industries/:id/edit', { :controller => 'industries', :action => 'edit' })
  get('/update_industry/:id', { :controller => 'industries', :action => 'update' })

  # DELETE
  get('/delete_industry/:id', { :controller => 'industries', :action => 'destroy' })
  #------------------------------

  # Routes for the Company resource:
  # CREATE
  get('/companies/new', { :controller => 'companies', :action => 'new' })
  get('/create_company', { :controller => 'companies', :action => 'create' })

  # READ
  get('/companies', { :controller => 'companies', :action => 'index' })
  get('/companies/:id', { :controller => 'companies', :action => 'show' })

  # UPDATE
  get('/companies/:id/edit', { :controller => 'companies', :action => 'edit' })
  get('/update_company/:id', { :controller => 'companies', :action => 'update' })

  # DELETE
  get('/delete_company/:id', { :controller => 'companies', :action => 'destroy' })
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get('/events/new', { :controller => 'events', :action => 'new' })
  get('/create_event', { :controller => 'events', :action => 'create' })

  # READ
  get('/events', { :controller => 'events', :action => 'index' })
  get('/events/:id', { :controller => 'events', :action => 'show' })

  # UPDATE
  get('/events/:id/edit', { :controller => 'events', :action => 'edit' })
  get('/update_event/:id', { :controller => 'events', :action => 'update' })

  # DELETE
  get('/delete_event/:id', { :controller => 'events', :action => 'destroy' })
  #------------------------------

  # Routes for the Contact resource:
  # CREATE
  get('/contacts/new', { :controller => 'contacts', :action => 'new' })
  get('/create_contact', { :controller => 'contacts', :action => 'create' })

  # READ
  get('/contacts', { :controller => 'contacts', :action => 'index' })
  get('/contacts/:id', { :controller => 'contacts', :action => 'show' })

  # UPDATE
  get('/contacts/:id/edit', { :controller => 'contacts', :action => 'edit' })
  get('/update_contact/:id', { :controller => 'contacts', :action => 'update' })

  # DELETE
  get('/delete_contact/:id', { :controller => 'contacts', :action => 'destroy' })
  #------------------------------

  get('/', { :controller => 'contacts', :action => 'home' })
  root 'contacts#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
