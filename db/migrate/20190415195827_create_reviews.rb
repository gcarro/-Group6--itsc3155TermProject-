class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :ident
      t.string :username
      t.string :body

      t.timestamps
    end
  end
end
