class AddValidationToClaims < ActiveRecord::Migration
  def change
    add_column :claims, :validation, :string
  end
end
