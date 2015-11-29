class Course < ActiveRecord::Base
  has_many :works
  has_many :designations

  attr_accessor :course_codes

  before_save :convert_course_codes_to_designations

  def convert_course_codes_to_designations
    [course_codes].flatten.select(&:present?).each do |value|
      subject_code, course_number = value.split(/\s/)
      designations.where(subject_code: subject_code, course_number: course_number, course_id: id).first_or_initialize
    end
  end

  def designation_codes
    designations.map(&:course_code).join(', ')
  end

  def graduate_value
    (interest || 50) * (course_level - 2) * credits_avg
  end

  def course_level
    course_number.to_s.first.to_i
  end

  def credits_avg
    (credits_min + credits_max) / 2
  end
end
