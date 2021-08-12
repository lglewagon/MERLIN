class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :delay_after_creation
      t.string :description
      t.references :plant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
