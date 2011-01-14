class Admin::ProjectsController < Admin::BaseController

  crudify :project,
          :title_attribute => 'name'


end
