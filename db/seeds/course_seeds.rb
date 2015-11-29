class CourseSeeds
  DEFAULT_ATTRIBUTES = {
    college: "Southern Oregon University",
  }

  COURSES = [
    {
      title: "Introduction to Interdisciplinary Studies",
      designations: [
        {
          subject_code: "MIIS",
          course_number: "520",
        }
      ],
      quarter: "2015-Fall"
    },
  ]

  def self.seed!
    COURSES.each do |course_attributes|
      course_attributes.reverse_merge!(DEFAULT_ATTRIBUTES)
      designations = course_attributes.delete(:designations)
      course = Course.where(title: course_attributes[:title]).first_or_create(course_attributes)
      designations.each do |designation_attributes|
        course.designations << Designation.new(designation_attributes)
      end
      course.save
    end
  end
end
