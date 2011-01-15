Refinery::Application.routes.draw do
  resources :partners

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :partners do
      collection do
        post :update_positions
      end
    end
  end
end
