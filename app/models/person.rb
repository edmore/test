class Person < ApplicationRecord
  has_many :goals

  validates :first_name, :last_name, presence: true

  def person_score
    total = self.goals.pluck(:score).sum
    count = self.goals.pluck(:score).count
    total/count
  end
end
