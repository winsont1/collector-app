class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.decimal :price
      t.binary :stocked
      t.integer :quantity
      t.decimal :weight
      t.string :categories
      t.string :description
      t.integer :rating

      t.timestamps
    end
  end
end
