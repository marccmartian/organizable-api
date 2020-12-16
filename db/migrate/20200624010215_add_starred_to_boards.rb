class AddStarredToBoards < ActiveRecord::Migration[6.0]
  def change
    add_column :boards, :starred, :boolean, default: false
  end
end
