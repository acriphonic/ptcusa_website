PtcusaWebsite::Application.routes.draw do
  resources :features

  resources :applications

  resources :products

  resources :resources

  resources :downloads

  resources :employees

	resources :users
	resources :news_updates
	resources :products
	resources :downloads
	resources :employees
	resources :sessions, only: [:new, :create, :destroy]	
	root 'static_pages#home'
	match '/news', to: 'news_updates#index', via: 'get'
	match '/admin_portal',  to: 'sessions#new', via: 'get'
	match '/signout', to: 'sessions#destroy', via: 'delete'
	match '/contact', to: 'static_pages#contact', via: 'get'
	match '/about_us', to: 'employees#index', via: 'get'  
	match '/industrial_control', to: 'static_pages#industrial_control', via: 'get'
	match '/scientific_applications', to: 'static_pages#scientific_applications', via: 'get'
	match '/particle_therapy', to: 'static_pages#particle_therapy', via: 'get'
end
