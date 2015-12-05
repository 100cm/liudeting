Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'welcome#index'

  get '/user/my_apply' =>'user#my_apply'

  get 'user/cancel_apply'=>'user#cancel_apply'




  get 'user/show' =>'user#show'
  get '/user/add_admin' =>'user#add_admin'
  get '/user/cancel_admin' => 'user#cancel_admin'


  get  'equipment/profile/:id' => 'equipment#profile'
  get '/equipment/new' => 'equipment#new'
  post '/equipment/create' => 'equipment#create'
  get '/equipment/show' => 'equipment#show'






  post '/equipment/create_image' => 'equipment#create_image'

  get '/equipment/:id/delete' => 'equipment#delete'

  get '/equipment/:id/edit' => 'equipment#edit'

  get '/equipment/repair' => 'equipment#repair'

  get '/equipment/apply' => 'equipment#apply'

  get '/equipment/:id/add_apply' => 'equipment#add_apply'

  get '/equipment/add_repair' => 'equipment#add_repair'

  get '/equipment/complete_repair' => 'equipment#complete_repair'


  get '/equipment/add_repair_report' => 'equipment#add_repair_report'


  get '/equipment/:id/edit' => 'equipment#edit'


  get '/equipment/:id/update' => 'equipment#update'


  get '/equipment/:id/delete_revert' => 'equipment#delete_revert'

  get '/equipment/revert' => 'equipment#revert'


  get  '/manage/apply' => 'apply#index'


  get '/manage/agree_apply' => 'apply#agree_apply'

  get '/manage/decline_apply' => 'apply#decline_apply'

  get '/lab/new' => 'lab#new'

  get '/lab/show' =>'lab#show'

  get 'lab/create' =>'lab#create'

  get 'lab/delete' => 'lab#delete'

  get 'lab/:id/edit' =>'lab#edit'



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
