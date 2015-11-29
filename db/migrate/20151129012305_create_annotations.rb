class CreateAnnotations < ActiveRecord::Migration
  def change
    create_table :annotations do |t|
      t.belongs_to :citation, index: true, foreign_key: true
      t.text :body_html

      t.timestamps null: false
    end
  end
end
