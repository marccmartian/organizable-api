class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.text :desc
      t.integer :pos, default: 1
      t.boolean :closed, default: false
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
