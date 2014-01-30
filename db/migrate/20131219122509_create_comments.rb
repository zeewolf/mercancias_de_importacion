class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :email
      t.text :content

      t.references :product, index: true

      t.timestamps
    end

    add_foreign_key :comments, :products, :name => 'comments_belong_to_product'
    add_index :comments, :created_at
  end
end
