class ChartController < ApplicationController
  before_filter :load_project

  def show
    respond_to do |format|
      format.js
    end
  end

  private
  def load_project
    @project = current_user.projects.find params[:project_id]
  end
end
