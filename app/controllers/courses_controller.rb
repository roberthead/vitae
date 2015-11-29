class CoursesController < ApplicationController
  def index
    @view = {
      enrollments: Enrollment.includes(:course).group_by(&:quarter_flexdate),
      interest_list: Course.untaken.sort_by(&:designation_codes),
    }
  end

  def show
    @course = Course.find(params[:id])
  end
end
