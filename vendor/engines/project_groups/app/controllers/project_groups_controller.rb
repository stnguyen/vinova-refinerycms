class ProjectGroupsController < ApplicationController

  before_filter :find_all_project_groups
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @project_group in the line below:
    present(@page)
  end

  def show
    @project_group = ProjectGroup.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @project_group in the line below:
    present(@page)
  end

protected

  def find_all_project_groups
    @project_groups = ProjectGroup.find(:all, :order => "position ASC")
  end

  def find_page
    @page = Page.find_by_link_url("/project_groups")
  end

end
