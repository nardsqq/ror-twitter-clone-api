class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :text
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end

    add_index :tweets, %i[user_id created_at]
  end
end
