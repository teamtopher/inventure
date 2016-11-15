class AddValidationToJourneys < ActiveRecord::Migration
  def change
    add_column :journeys, :validation, :string
  end
end
