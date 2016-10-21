class RemoveDifficultyFromClaims < ActiveRecord::Migration
  def change
    remove_column :claims, :difficulty, :integer
  end
end
