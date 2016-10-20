class AddClaimIdToJourneys < ActiveRecord::Migration
  def change
    add_column :journeys, :claim_id, :integer
  end
end
