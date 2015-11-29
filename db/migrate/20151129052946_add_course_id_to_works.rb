class AddCourseIdToWorks < ActiveRecord::Migration
  def change
    add_reference :works, :course, index: true, foreign_key: true
  end
end
