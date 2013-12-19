class CreateJuicios < ActiveRecord::Migration
  def change
    create_table :juicios do |t|
      t.string :name
      t.string :email
      t.text :content

      t.references :product, index: true

      t.timestamps
    end

    add_foreign_key :juicios, :products, :name => 'juicios_belong_to_product'
    add_index :juicios, :created_at
  end
end
