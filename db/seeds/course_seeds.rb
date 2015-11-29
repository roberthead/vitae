class CourseSeeds
  DEFAULT_ATTRIBUTES = {
    college: "Southern Oregon University",
  }

  COURSES = [
    {
      title: "Introduction to Interdisciplinary Studies",
      course_codes: "MIIS 520",
      instructor: "Kristin Nagy Catz"
      quarter: "2015-Fall",
    },
  ]

  def self.seed!
    COURSES.each do |course_attributes|
      course_attributes.reverse_merge!(DEFAULT_ATTRIBUTES)
      Course.where(title: course_attributes[:title]).first_or_create(course_attributes)
    end
  end
end
