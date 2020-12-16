class RemoveDescFromBoards < ActiveRecord::Migration[6.0]
  def change
    remove_column :boards, :desc, :text
  end
end
