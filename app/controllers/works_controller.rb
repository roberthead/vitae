class WorksController < ApplicationController
  def index
    @view = {
      works: Work.all,
    }
  end

  def show
    @work = Work.find(params[:id])
  end
end
