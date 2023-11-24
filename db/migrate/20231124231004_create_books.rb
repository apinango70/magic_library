class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.boolean :availability
      t.text :synopsys

      t.timestamps
    end
  end
end
