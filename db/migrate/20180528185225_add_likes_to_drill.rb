class AddLikesToDrill < ActiveRecord::Migration[5.1]
  def change
    add_column :drills, :likes, :integer
  end
end
