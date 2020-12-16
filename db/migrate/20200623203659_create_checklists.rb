class CreateChecklists < ActiveRecord::Migration[6.0]
  def change
    create_table :checklists do |t|
      t.string :name
      t.integer :pos, default: 1

      t.timestamps
    end
  end
end
