class AddCategoryToJourneys < ActiveRecord::Migration
  def change
    add_column :journeys, :category, :string
  end
end
