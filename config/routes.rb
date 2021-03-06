Blog::Application.routes.draw do
  devise_for :admins
  resources :request_texts

  resources :subs_emails

  resources :categories
  resources :authors

  get "home/index"
  get "home/edit"
  get "home/feed"
  post "home/getdata"

  get "about" => 'home#about'
  get "rohan" => 'home#rohan'
  get "request" => 'home#request_tut'
  get "feedback" => 'home#feedback'
  get "snippets" => 'home#snippets'
  get "parsecodes" => 'home#parsecodes'
  get "get_snip" => 'home#get_snip'

  get "searchsnip/:q" => 'home#searchsnip'
  
  get "home/topic_list/:id" => 'home#topic_list'
  get "home/searchqry/:q" => 'home#searchqry'
  # get "post/:id" => 'home#post'

  Category.all.each do |c|

     get c.name.parameterize => "home#topic_list"
     get "#{c.name.parameterize}/:posturl" => "home#post"

  end

  

  resources :posts

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'

   get "/sitemap.:format" => 'home#sitemap'




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
