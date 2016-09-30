Rails.application.routes.draw do


  get 'historials/', to: 'historials#index'


  get 'areas/', to: 'areas#index'


  get 'usuarios/', to:'usuarios#index'
  get 'usuarios/nuevo', as: 'nuevo_usuario'
  get 'usuarios/:id/editar', to: 'usuarios#editar', as: 'editar_usuario'
  put 'usuarios/:id',to: 'usuarios#update'
  patch 'usuarios/:id' ,to: 'usuarios#update'

  get 'roles/index'

  get 'objetivos/', to: 'objetivos#index'
  get 'objetivos/nuevo', as: 'nuevo_objetivo'
  post 'objetivos/', to: 'objetivos#crear'
  get 'objetivos/:id/editar', to: 'objetivos#editar', as: 'editar_objetivo'
  put 'objetivos/:id',to: 'objetivos#update'
  patch 'objetivos/:id' ,to: 'objetivos#update'
  delete 'objetivos/:id', to: 'objetivos#eliminar'

  get 'historials/index'
  get 'historials/:id/editar', to: 'historials#editar', as: 'editar_historial'

  get 'estados/index'

  get 'clasificaciones/index'

  get 'areas/index'

  devise_for :usuarios
  get 'beneficio/', to:'beneficiarios#indexfront'
  
  get 'beneficiarios/', to: 'beneficiarios#index', as: 'beneficiarios'
  get 'beneficiarios/nuevo', as: 'nuevo_beneficiario'
  post 'beneficiarios/', to: 'beneficiarios#crear'
  get 'beneficiarios/:id/editar', to: 'beneficiarios#editar', as: 'editar_beneficiario'
  get 'beneficiarios/:id', to: 'beneficiarios#mostrar', as: 'beneficiario'
  put 'beneficiarios/:id',to: 'beneficiarios#update'
  patch 'beneficiarios/:id' ,to: 'beneficiarios#update'
  delete 'beneficiarios/:id', to: 'beneficiarios#eliminar'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'usuarios#index'


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
