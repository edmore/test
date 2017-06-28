class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.integer :score, default: 1
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
