class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :subtitle
      t.string :attribution
      t.string :medium
      t.string :materials
      t.string :process
      t.string :creation_flexdate
      t.text :artist_statement
      t.text :description

      t.timestamps null: false
    end
  end
end
