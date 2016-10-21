class AddDifficultyToClaims < ActiveRecord::Migration
  def change
    add_column :claims, :difficulty, :integer
  end
end
