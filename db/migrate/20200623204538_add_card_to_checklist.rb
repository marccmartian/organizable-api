class AddCardToChecklist < ActiveRecord::Migration[6.0]
  def change
    add_reference :checklists, :card, null: false, foreign_key: true
  end
end
