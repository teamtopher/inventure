class AddJourneyIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :journey_id, :integer
  end
end
