class CreateTrailifications < ActiveRecord::Migration
  def change
    create_table :trailifications do |t|
      t.belongs_to :trail, index: true
      t.belongs_to :trailmarker, index: true

      t.timestamps
    end
  end
end
