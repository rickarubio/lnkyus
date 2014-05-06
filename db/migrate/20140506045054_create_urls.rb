class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.belongs_to :user
      t.string :address
      t.string :short
      t.integer :hits


      t.timestamps
    end
  end
end
