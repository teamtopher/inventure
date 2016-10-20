class AddCreatorIdToClaims < ActiveRecord::Migration
  def change
    add_column :claims, :creator_id, :integer
  end
end
