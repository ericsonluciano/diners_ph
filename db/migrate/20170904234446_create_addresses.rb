class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
