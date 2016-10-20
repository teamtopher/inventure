class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.string :answer
      t.integer :user_id
      t.integer :journey_id

      t.timestamps null: false
    end
  end
end
