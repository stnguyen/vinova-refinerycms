Refinery::Application.routes.draw do
  resources :services

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :services do
      collection do
        post :update_positions
      end
    end
  end
end
