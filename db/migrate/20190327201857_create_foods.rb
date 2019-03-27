class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :Ident
      t.string :desc
      t.string :picAdd
      t.string :location
      t.string :category
      t.string :hours
      t.integer :rating

      t.timestamps
    end
  end
end
