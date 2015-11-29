class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :subtitle
      t.string :fast_attribution_string
      t.string :medium
      t.string :materials
      t.string :process
      t.string :creation_flexdate
      t.text :artist_statement
      t.text :description
      t.string :collection_name
      t.string :collection_position

      t.timestamps null: false
    end
  end
end
