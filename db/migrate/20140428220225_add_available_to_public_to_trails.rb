class AddAvailableToPublicToTrails < ActiveRecord::Migration
  def change
    add_column :trails, :available_to_public, :boolean
  end
end
