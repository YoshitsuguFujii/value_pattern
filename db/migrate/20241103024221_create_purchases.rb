class CreatePurchases < ActiveRecord::Migration[7.2]
  def change
    create_table :purchases do |t|
      t.integer :quantity
      t.string :username

      t.timestamps
    end
  end
end
