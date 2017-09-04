class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
