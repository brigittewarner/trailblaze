class CreateTrailmarkers < ActiveRecord::Migration
  def change
    create_table :trailmarkers do |t|
      t.string :name
      t.text :description
      t.string :status
      t.belongs_to :trail

      t.timestamps
    end
  end
end
