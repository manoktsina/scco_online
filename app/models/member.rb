class Member < ApplicationRecord
  has_many :entries

  validates :code, uniqueness: true
end
