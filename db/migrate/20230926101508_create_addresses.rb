class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.integer :street_number
      t.string :street_address
      t.string :neighbourhood
      t.string :city
      t.string :province
      t.string :area_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
