Refinery::Application.routes.draw do
  resources :project_groups

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :project_groups do
      collection do
        post :update_positions
      end
    end
  end
end
