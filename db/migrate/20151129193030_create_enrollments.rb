class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.belongs_to :course, index: true, foreign_key: true
      t.string :instructor
      t.string :quarter_flexdate
      t.string :credits
      t.string :mark

      t.timestamps null: false
    end
  end
end
