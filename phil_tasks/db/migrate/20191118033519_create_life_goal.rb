class CreateLifeGoal < ActiveRecord::Migration[5.1]
  def change
    create_table :life_goals do |t|
      t.string :title
      t.string :description
    end
  end
end
