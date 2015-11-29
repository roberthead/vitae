class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :instructor
      t.string :college
      t.string :quarter
      t.integer :credits_min
      t.integer :credits_max
      t.string :grade
      t.integer :interest

      t.timestamps null: false
    end
  end
end
