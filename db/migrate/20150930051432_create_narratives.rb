class CreateNarratives < ActiveRecord::Migration
  def change
    create_table :narratives do |t|
      t.string :title
      t.string :description
      t.string :text
      t.text :result
      t.integer :people
      t.integer :location
      t.string :templates
      t.string :image_url
      t.references :issue, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
