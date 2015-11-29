class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :college
      t.integer :credits_min
      t.integer :credits_max
      t.boolean :repeatable
      t.integer :interest

      t.timestamps null: false
    end
  end
end
