require 'rails_helper'

RSpec.describe ReadingGoal, type: :model do
  describe "Validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:deadline) }
    it { should validate_presence_of(:number_pages) }
    it { should validate_presence_of(:pages_per_day) }

    it { should validate_numericality_of(:number_pages).only_integer }
    it { should validate_numericality_of(:pages_per_day).only_integer }
  end
end
