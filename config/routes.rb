PtcusaWebsite::Application.routes.draw do
	root 'static_pages#home'
	match '/contact', to: 'static_pages#contact', via: 'get'  
	match '/industrial_control', to: 'static_pages#industrial_control', via: 'get'
	match '/scientific_applications', to: 'static_pages#scientific_applications', via: 'get'
	match '/particle_therapy', to: 'static_pages#particle_therapy', via: 'get'
end
