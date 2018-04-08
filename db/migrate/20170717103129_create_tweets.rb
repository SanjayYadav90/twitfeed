class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|

      t.string      :text
      t.datetime    :tweeted_at
      # t.string      :metadata, default: {}
      t.string      :metadata
      t.string      :address
      t.string      :lat
      t.string      :long

      t.timestamps
    end
  end
end
