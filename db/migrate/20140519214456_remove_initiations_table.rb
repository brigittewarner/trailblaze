class RemoveInitiationsTable < ActiveRecord::Migration
  def change
  	drop_table("initiations_tables")
  end
end
