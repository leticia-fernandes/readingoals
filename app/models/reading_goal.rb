class ReadingGoal < ApplicationRecord
    validates :title, presence: true
    validates :number_pages, presence: true, numericality: { only_integer: true }
    validates :deadline, presence: true
    validates :pages_per_day, numericality: { only_integer: true }, allow_nil: true
end
