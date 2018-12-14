require 'sidekiq/web'
Rails.application.routes.draw do

  devise_for :admin_users, path: :admin, controllers: {
    sessions: 'admin/devise/sessions',
    #registrations: 'admin/devise/registrations',
    #confirmations: 'admin/devise/confirmations',
    passwords: 'admin/devise/passwords',
    unlocks: 'admin/devise/unlocks'
  }

  # Backoffice
  namespace :admin do

      get "/settings", to: "settings#show"
      get "/settings/edit", to: "settings#edit"
      put "/settings", to: "settings#update"

      get "/adds", to: "adds#show"
      get "/adds/edit", to: "adds#edit"
      put "/adds", to: "adds#update"

    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource


      #Mass Assigment routes
      namespace dashboard_resource do
        post :mass_assignment
        post :export_to_excel
      end

    end

    resources :admin_users, only: [] do
      get :change_password
      put :update_password
    end

    resources :users, only: [] do
      get :change_password
      put :update_password
    end

    resources :temporal_images, only: :create

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  # API
  namespace :api do

    namespace :v1 do

      resources :posts, only: [:index, :show]
      resources :events, only: [:index, :show]

      # resource :valuation_settings, only: :show do
      #   get :calculate_price
      # end
      # resource :settings, only: [] do
      #   get :places
      # end
      # resource :location_request, only: :create
      # resources :users, only: [:show, :create, :update] do
      #   member do
      #     get :shipments
      #     post :change_picture
      #     get :messages
      #     post :request_checking_account
      #     post :add_user
      #     post :quit_user
      #     post :invite_user
      #     put :billing_info
      #   end
      # end

    end

  end

  #Sidekiq Web
  authenticate :admin_user, lambda { |u| u.present? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  ## APIPIE ##
  authenticate :admin_user, lambda { |u| u.present? } do
    apipie
  end

  root to: "admin/#{DashboardManifest::ROOT_DASHBOARD}#index"

end
