class CreateCardsLabelsJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_join_table :cards, :labels do |t|
      # t.index [:card_id, :label_id]
      # t.index [:label_id, :card_id]
    end
  end
end
