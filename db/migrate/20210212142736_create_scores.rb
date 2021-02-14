class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :floor_score_d 
      t.integer :floor_score_e 
      t.integer :pommel_score_d 
      t.integer :pommel_score_e 
      t.integer :rings_score_d 
      t.integer :rings_score_e 
      t.integer :vault_score_d
      t.integer :vault_score_e 
      t.integer :parallel_score_d 
      t.integer :parallel_score_e 
      t.integer :horizontal_score_d 
      t.integer :horizontal_score_e 
      t.references :athlete,            foreign_key: true
      t.timestamps
    end
  end
end
