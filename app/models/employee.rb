class Employee < ApplicationRecord
  validates :alias, :first_name, :last_name, :office, presence: true
  validates :alias, :title, uniqueness: true

  belongs_to :dog
end