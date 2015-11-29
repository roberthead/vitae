class CreateAttributions < ActiveRecord::Migration
  def change
    create_table :attributions do |t|
      t.string :name_last
      t.string :name_first
      t.string :name_middle # may be abbreviated
      t.integer :position
      t.boolean :editor
      t.belongs_to :work, index: true, foreign_key: true
      t.belongs_to :citation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
