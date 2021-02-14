class CreateAthletes < ActiveRecord::Migration[6.0]
  def change
    create_table :athletes do |t|
      t.string     :name,              null: false
      t.integer    :old,               null: false
      t.string     :school_career             
      t.integer    :prefecture_id,     null: false
      t.references :affiliation,       foreign_key: true
      t.timestamps
    end
  end
end
