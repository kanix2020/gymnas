class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.string :floor_score, 
      t.string :pommel_score, 
      t.string :rings_score, 
      t.string :Vault_score, 
      t.string :parallel_score, 
      t.string :horizontal_score, 
      t.reference :athlete,            foreign_key: true
      t.reference :game,          foreign_key: true
      t.timestamps
    end
  end
end
