class Course < ActiveRecord::Base
  has_many :works
  has_many :designations
  has_many :enrollments

  attr_accessor :course_codes

  before_save :convert_course_codes_to_designations

  scope :untaken, -> { includes(:enrollments).where( enrollments: { course_id: nil } ) }

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
    # maximum score is 100
    (interest || 50) * (course_level / 5.0)
  end

  def graduate_value_level
    if graduate_value > 75
      'high_value'
    elsif graduate_value > 50
      'medium_value'
    else
      'low_value'
    end
  end

  def course_level
    course_levels.sort.last
  end

  def course_levels
    designations.map(&:course_level)
  end

  def credits_avg
    (credits_min + credits_max) / 2
  end

  def credits_string
    if credits_min
      if credits_max && credits_max != credits_min
        "#{credits_min}-#{credits_max} credits"
      else
        "#{credits_min} credit".pluralize(credits_min)
      end
    end
  end
end
