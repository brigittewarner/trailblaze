class CreateInitiationsTable < ActiveRecord::Migration
  def change
    create_table :initiations_tables do |t|
    	t.belongs_to :trail
    	t.belongs_to :user
    	
    	t.timestamps
    end
  end
end
