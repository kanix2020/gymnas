class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string     :name,             null: false
      t.date       :day,              null: false
      t.string     :venue,            null: false
      t.integer    :prefecture_id,    null: false
      t.references :score,            foreign_key: true
      t.timestamps
    end
  end
end
