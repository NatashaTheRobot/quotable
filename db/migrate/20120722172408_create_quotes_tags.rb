class CreateQuotesTags < ActiveRecord::Migration
  def change
    create_table :quotes_tags, :id => false do |t|
      t.references :quote, :null => false
      t.references :tag, :null => false
    end

    add_index(:quotes_tags, [:quote_id, :tag_id], :unique => true)
  end
end
