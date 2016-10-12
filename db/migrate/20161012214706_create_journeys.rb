class CreateJourneys < ActiveRecord::Migration
  def change
    create_table :journeys do |t|
      t.text :name
      t.integer :difficulty
      t.text :description

      t.timestamps null: false
    end
  end
end
