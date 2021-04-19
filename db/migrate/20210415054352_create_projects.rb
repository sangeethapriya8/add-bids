class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :skill
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
