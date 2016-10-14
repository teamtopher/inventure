class CreateClues < ActiveRecord::Migration
  def change
    create_table :clues do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
