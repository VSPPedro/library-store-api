class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.references :author, null: false, foreign_key: true
      t.string :isbn, null: false
      t.decimal :price, null: false
      t.text :short_description

      t.timestamps
    end
  end
end
