class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :color
      t.string :price
      t.datetime :built_in
      t.string :category

      t.timestamps null: false
    end
  end
end
