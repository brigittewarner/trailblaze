class DropInitiationsTable < ActiveRecord::Migration
  def down
  	drop_table :initiations_tables
  end
end
