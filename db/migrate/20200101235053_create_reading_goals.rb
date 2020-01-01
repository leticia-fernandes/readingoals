class CreateReadingGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :reading_goals do |t|
      t.string :title
      t.integer :number_pages
      t.date :deadline
      t.integer :pages_per_day

      t.timestamps
    end
  end
end
