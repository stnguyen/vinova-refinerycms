Refinery::Application.routes.draw do
  resources :projects

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :projects do
      collection do
        post :update_positions
      end
    end
  end
end
