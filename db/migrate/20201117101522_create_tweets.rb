class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text            :text
      t.integer         :wether        , null: false
      t.integer         :temperature   , null: false
      t.integer         :wind          , null: false
      t.integer         :prefecture    , null: false
      t.integer         :address       , null: false
      t.references      :user          , null: false, foreign_key: true

      t.timestamps
    end
  end
end

