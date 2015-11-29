class CourseSeeds
  DEFAULT_ATTRIBUTES = {
    college: "Southern Oregon University",
  }

  COURSES = [
    {
      title: "Introduction to Interdisciplinary Studies",
      course_codes: "MIIS 520",
      credits_min: 2,
      credits_max: 2,
      interest: 100,
      enrollments: [
        {
          instructor: "Kristin Nagy Catz",
          quarter_flexdate: "2015-Fall",
        }
      ]
    },
    {
      title: "Digital Fabrication Methods",
      course_codes: ["ART 507", "EMDA 407"],
      credits_min: 4,
      credits_max: 4,
      interest: 75,
      enrollments: [
        {
          instructor: "David Bithell",
          quarter_flexdate: "2015-Fall",
        }
      ]
    },
    {
      title: "Piano Proficiency",
      course_codes: ["MUS 292"],
      credits_min: 1,
      credits_max: 1,
      interest: 100,
      enrollments: [
        {
          instructor: "Alexander Tutunov",
          quarter_flexdate: "2015-Fall",
        }
      ]
    },
    {
      title: "Orchestration",
      course_codes: ["MUS 441", "MUS 541"],
      credits_min: 3,
      credits_max: 3,
      interest: 100,
      enrollments: [
        {
          instructor: "Vicki Purslow",
          quarter_flexdate: "2015-Fall",
        }
      ]
    },

    { credits_min: 4, credits_max: 4, interest: 80, course_codes: "COMM 312", title: "Screenwriting" },
    { credits_min: 4, credits_max: 4, interest: 50, course_codes: "COMM 375", title: "Editing for Film and Video" },
    { credits_min: 4, credits_max: 4, interest: 50, course_codes: "COMM 380", title: "News and Documentary Screenwriting" },
    { credits_min: 4, credits_max: 4, interest: 50, course_codes: "COMM 420", title: "Science Fiction Film" },
    { credits_min: 4, credits_max: 4, interest: 75, course_codes: "COMM 424", title: "Creative Entrepreneurship" },
    { credits_min: 4, credits_max: 4, interest: 80, course_codes: "COMM 472D", title: "Advanced Fictional Film Production" },

    { credits_min: 4, credits_max: 4, interest: 80, course_codes: "CW 320", title: "Emergent Forms" },
    { credits_min: 4, credits_max: 4, interest: 90, course_codes: "CW 386", title: "Songwriting" },

    { credits_min: 4, credits_max: 4, interest: 100, course_codes: "EMDA 320", title: "Writing Nonlinear" },
    { credits_min: 1, credits_max: 4, interest: 80, course_codes: ["EMDA 348", "ART 348"], title: "Concept Art and Preproduction Methods" },
    { credits_min: 1, credits_max: 4, interest: 80, course_codes: ["EMDA 349", "ART 349"], title: "Comic and Picture Book Methods" },
    { credits_min: 1, credits_max: 4, interest: 75, course_codes: ["EMDA 361", "ART 361"], title: "Programming for Artists (Max / Arduino)" },
    { credits_min: 4, credits_max: 4, interest: 75, course_codes: ["EMDA 362", "COMM 362"], title: "Transmedia Storytelling Genres" },
    { credits_min: 1, credits_max: 4, interest: 50, course_codes: ["EMDA 363", "ART 363"], title: "Digital Performance Methods" },
    { credits_min: 1, credits_max: 4, interest: 50, course_codes: ["EMDA 364", "ART 364"], title: "Robotic Art Methods" },
    { credits_min: 1, credits_max: 4, interest: 50, course_codes: ["EMDA 365", "ART 365"], title: "Sound Art and Experimental Music Methods" },
    { credits_min: 1, credits_max: 4, interest: 50, course_codes: "EMDA 399", title: "Special Studies" },
    { credits_min: 4, credits_max: 4, interest: 75, course_codes: "EMDA 410", title: "Cultures of Video Gaming: The Serious Business of Play" },
    { credits_min: 4, credits_max: 4, interest: 50, course_codes: ["EMDA 411", "COMM 411"], title: "Online Cultures" },
    { credits_min: 4, credits_max: 4, interest: 50, course_codes: ["EMDA 421", "COMM 421"], title: "Animation & Anime" },

    { credits_min: 4, credits_max: 4, interest: 50, course_codes: "ENG 595", title: "Topics in Film" },

    { credits_min: 2, credits_max: 4, interest: 50, course_codes: "MUP 590", title: "Applied Music - Composition", repeatable: true },
    { credits_min: 2, credits_max: 4, interest: 50, course_codes: "MUP 590", title: "Applied Music - Piano", repeatable: true },

    { credits_min: 2, credits_max: 2, interest: 50, course_codes: "MUS 323", title: "Fundamentals of Conducting" },
    { credits_min: 2, credits_max: 2, interest: 50, course_codes: "MUS 324", title: "Intermediate Conducting" },
    { credits_min: 3, credits_max: 3, interest: 25, course_codes: "MUS 510", title: "Introduction to Graduate Studies in Music" },
    { credits_min: 3, credits_max: 3, interest: 75, course_codes: "MUS 540", title: "Form and Analysis" },
    { credits_min: 3, credits_max: 3, interest: 75, course_codes: "MUS 542", title: "Counterpoint" },
    { credits_min: 3, credits_max: 3, interest: 75, course_codes: "MUS 543", title: "Composition Survey" },
    { credits_min: 3, credits_max: 3, interest: 50, course_codes: "MUS 545", title: "Special Topic: Theory" },
    { credits_min: 3, credits_max: 3, interest: 50, course_codes: "MUS 546", title: "Theory in Performance" },
    { credits_min: 4, credits_max: 4, interest: 25, course_codes: "MUS 580", title: "Introduction to Music Education" },

    { credits_min: 4, credits_max: 4, interest: 50, course_codes: "TA 371", title: "Playwriting" },
    { credits_min: 3, credits_max: 3, interest: 75, course_codes: "TA 430", title: "The Art of Storytelling" },
    { credits_min: 4, credits_max: 4, interest: 75, course_codes: "TA 442", title: "Theatre Sound Design" },
  ]

  def self.seed!
    COURSES.each do |course_attributes|
      course_attributes.reverse_merge!(DEFAULT_ATTRIBUTES)
      enrollments = course_attributes.delete(:enrollments) || {}
      Course.where(title: course_attributes[:title]).first_or_create(course_attributes).tap do |course|
        enrollments.each do |enrollment_attributes|
          course.enrollments.where({
            quarter_flexdate: enrollment_attributes[:quarter_flexdate],
            course: course,
          }).first_or_create(enrollment_attributes)
        end
      end
    end
  end
end
