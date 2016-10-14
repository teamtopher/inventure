class AddJourneyIdToClues < ActiveRecord::Migration
  def change
    add_column :clues, :journey_id, :integer
  end
end
