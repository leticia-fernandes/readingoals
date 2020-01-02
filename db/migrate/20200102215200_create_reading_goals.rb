class CreateReadingGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :reading_goals do |t|
      t.string :title, null: false
      t.integer :number_pages, null: false
      t.date :deadline, null: false
      t.integer :pages_per_day, null: false

      t.timestamps
    end
  end
end
