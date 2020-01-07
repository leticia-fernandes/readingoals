class ReadingGoal < ApplicationRecord
    validates :title, :deadline, presence: true
    validates :number_pages, :pages_per_day, numericality: { only_integer: true }
    validates :pages_per_day, allow_nil: true
end
