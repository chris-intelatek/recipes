class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.string :author
      t.string :category
      t.text :directions
      t.text :notes

      t.timestamps
    end
  end
end
