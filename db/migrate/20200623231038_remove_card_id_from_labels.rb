class RemoveCardIdFromLabels < ActiveRecord::Migration[6.0]
  def change
    remove_column :labels, :card_id, :integer
  end
end
