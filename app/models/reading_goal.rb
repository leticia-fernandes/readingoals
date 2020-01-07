class ReadingGoal < ApplicationRecord
    validates :title, :deadline, :number_pages, :pages_per_day, presence: true
    validates :number_pages, :pages_per_day, numericality: { only_integer: true }
end
