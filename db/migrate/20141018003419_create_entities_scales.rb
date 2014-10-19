class CreateEntitiesScales < ActiveRecord::Migration
  def change
    create_table :entities_scales do |t|
      t.integer :score
      t.integer :total
      t.references :entity, index: true
      t.references :scale, index: true

      t.timestamps
    end
  end
end
