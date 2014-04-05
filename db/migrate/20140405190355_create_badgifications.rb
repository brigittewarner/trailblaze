class CreateBadgifications < ActiveRecord::Migration
  def change
    create_table :badgifications do |t|
      t.belongs_to :user, index: true
      t.belongs_to :badge, index: true

      t.timestamps
    end
  end
end
