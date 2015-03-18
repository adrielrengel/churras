Rails.application.routes.draw do
  resources :estoques

  resources :cidades

  resources :usuarios

  resources :entradas_caixa

  resources :formas_pagamento

  resources :pessoa_juridicas

  resources :pessoa_fisicas

  resources :ruas

  resources :enderecos

  resources :pessoas

  resources :clientes

  resources :funcionarios

  resources :item_pedidos

  resources :fornecedores

  resources :pedidos

  resources :produtos

  resources :categoria_produtos

  resources :salarios

  resources :saida_caixas

  resources :unidades

  resources :contatos

  resources :tipo_contatos

  root to: "mesas#index"

  resources :mesas do
      collection do 
        patch :adicionar
        patch :excluir
      end
  end

  resources :funcoes

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
