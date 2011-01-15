class Admin::PartnersController < Admin::BaseController

  crudify :partner,
          :title_attribute => 'name'


end
