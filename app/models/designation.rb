class Designation < ActiveRecord::Base
  belongs_to :course

  def course_code
    [subject_code, course_number].join(' ')
  end
end
