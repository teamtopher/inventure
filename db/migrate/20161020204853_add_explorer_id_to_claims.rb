class AddExplorerIdToClaims < ActiveRecord::Migration
  def change
    add_column :claims, :explorer_id, :integer
  end
end
