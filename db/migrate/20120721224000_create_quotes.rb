class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :text, :null => false
      t.string :author
      t.references :user

      t.timestamps
    end
  end
end
