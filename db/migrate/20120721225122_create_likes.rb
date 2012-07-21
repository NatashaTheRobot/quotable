class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :user
      t.references :quote
      
      t.timestamps
    end
  end
end
