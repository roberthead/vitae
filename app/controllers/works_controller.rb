class WorksController < ApplicationController
  def index
    @view = {
      works: Work.all,
    }
  end

  def show
  end
end
