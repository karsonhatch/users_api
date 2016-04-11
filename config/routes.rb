Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # Resource Routes
      resources :users, except: [:new, :edit]

      # GET Routes
      get 'users_search', to: 'users#search'
      #POST Routes

      #PUT Routes

      # DELETE Routes
    end  
  end
end
