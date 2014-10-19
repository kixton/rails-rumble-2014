class CreateScales < ActiveRecord::Migration
  def change
    create_table :scales do |t|
      t.string :name
      t.string :positive
      t.string :negative
      t.references :category, index: true

      t.timestamps
    end
  end
end
