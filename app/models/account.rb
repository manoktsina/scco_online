class Account < ApplicationRecord
  validates :code, presence: true
  validates :title, presence: true
  validates :nature, presence: true

end
