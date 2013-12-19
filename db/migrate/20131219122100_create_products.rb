class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :rating
      t.decimal :inet_price
      t.decimal :price

      t.timestamps

      t.string :image_file_name
      t.string :image_content_type, :string
      t.integer :image_file_size, :integer
      t.datetime :image_updated_at, :datetime
    end
  end
end
