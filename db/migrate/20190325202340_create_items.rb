class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.ineger :id
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
