class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :instructor
      t.string :college
      t.string :quarter

      t.timestamps null: false
    end
  end
end
