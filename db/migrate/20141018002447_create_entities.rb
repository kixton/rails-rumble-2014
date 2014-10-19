class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.references :category, index: true

      t.timestamps
    end
  end
end
