class CreateCommits < ActiveRecord::Migration[5.2]
  def change
    create_table :commits do |t|
      t.text :commit
      t.references :realestate, foreign_key: true

      t.timestamps
    end
  end
end
