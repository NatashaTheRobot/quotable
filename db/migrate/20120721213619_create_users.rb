class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :twitter_name
      t.string :name
      t.string :auth_token
      t.string :auth_secret
      t.string :image

      t.timestamps
    end
  end
end