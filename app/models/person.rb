class Person < ApplicationRecord
  has_many :goals

  validates :first_name, :last_name, presence:  true
end
