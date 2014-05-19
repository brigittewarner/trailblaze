class RemoveUserIdFromInitiationsTables < ActiveRecord::Migration
  def change
  	remove_column("initiations_tables", "user_id")
  end
end
