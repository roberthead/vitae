class Course < ActiveRecord::Base
  has_many :works
  has_many :designations
end
