class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.integer :user_id
      t.string :provider
      t.string :uid
      t.string :oauth_token
      t.string :oauth_token_secret
      t.string :consumer_key
      t.string :consumer_secret

      t.timestamps
    end
  end
end
