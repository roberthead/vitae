class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.string :work_name
      t.string :publication_name
      t.string :publication_volume
      t.string :publication_number
      t.string :publishing_location
      t.string :publishing_company
      t.string :publishing_flexdate
      t.integer :pages_start
      t.integer :pages_end
      t.string :medium
      t.string :fast_mla

      t.timestamps null: false
    end
  end
end
