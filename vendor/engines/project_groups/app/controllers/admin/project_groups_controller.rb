class Admin::ProjectGroupsController < Admin::BaseController

  crudify :project_group,
          :title_attribute => 'name'


end
