class CreateDesignations < ActiveRecord::Migration
  def change
    create_table :designations do |t|
      t.belongs_to :course, index: true, foreign_key: true
      t.string :subject_code
      t.string :course_number

      t.timestamps null: false
    end
  end
end
