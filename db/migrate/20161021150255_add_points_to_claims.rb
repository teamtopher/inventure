class AddPointsToClaims < ActiveRecord::Migration
  def change
    add_column :claims, :points, :integer
  end
end
