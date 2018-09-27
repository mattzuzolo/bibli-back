Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users do
        resources :collections
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :collections
    end
  end

  namespace :api do
    namespace :v1 do
      resources :books
    end
  end


end
