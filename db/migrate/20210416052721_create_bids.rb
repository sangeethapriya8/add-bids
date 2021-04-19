class CreateBids < ActiveRecord::Migration[6.1]
  def change
    create_table :bids do |t|
      t.integer :price
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
