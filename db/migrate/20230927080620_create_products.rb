class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|

      t.decimal :product_price
      t.string :product_image
      t.string :product_name
      t.string :brand_name
      t.string :product_model_name
      t.string :product_description
      t.string :category

      t.timestamps
    end
  end
end
