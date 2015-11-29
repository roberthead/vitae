class Designation < ActiveRecord::Base
  belongs_to :course

  def course_code
    [subject_code, course_number].join(' ')
  end

  def course_level
    course_number.to_s.first.to_i
  end
end
