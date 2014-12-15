Rails.application.routes.draw do
  resources :notificacions

  get 'archivos/subir_archivos'
  get 'archivos/listar_archivos'

  get 'archivos/borrar_archivos'

  get 'archivos/guardar_comentarios'

  resources :servicios

  resources :tareas
  get "tareas/index/:estadoTarea" => "tareas#index"

  resources :empresas

  resources :usuario
  get "usuario/filtrarUsuarios/:id" => "usuario#filtrarUsuarios"
  
  devise_for :usuarios
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

  get "cliente/index" => "cliente#index"
  get "ejecutante/index" => "ejecutante#index"
  get "administrador/index" => "administrador#index"
  post "administrador/index" => "administrador#index"
  get "super_administrador/index" => "super_administrador#index"
  get "super_administrador/filtrarUsuarios/:id" => "super_administrador#filtrarUsuarios"
  get "archivos/subir_archivos"
  post "archivos/subir_archivos"
  get "archivos/listar_archivos"
  post "archivos/borrar_archivos"
  get "archivos/guardar_comentarios"
  post "archivos/guardar_comentarios"
  get "cliente/servicios" => "servicios#index"


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
