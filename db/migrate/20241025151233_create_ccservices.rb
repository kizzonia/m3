class CreateCcservices < ActiveRecord::Migration[6.1]
  def change
    create_table :ccservices do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.string :slug
      t.string :ccimg1

      t.timestamps
    end
    add_index :ccservices, :slug
  end
end
