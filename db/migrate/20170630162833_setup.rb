class Setup < ActiveRecord::Migration[5.1]
  def change

    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :origin

      t.timestamps
    end

    create_table :reviews do |t|
      t.string :user
      t.uuid :product_id
      t.string :comment
      t.integer :rating

      t.timestamps
    end
  end
end
