class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.string :name
      t.string :ingredients
      t.integer :rating
      t.date :date
    end
    create_table :tags do |t|
      t.string :name
    end
    create_table :instructions_tags do |t|
      t.belongs_to :tag
      t.belongs_to :instruction
    end
  end
end
