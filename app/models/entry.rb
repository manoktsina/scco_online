class Entry < ApplicationRecord
  belongs_to :account
  belongs_to :member

  validates :voucher_type, inclusion: { in: %w(CV JV OR FB) }
  validates :voucher_number, numericality: true
  validates :voucher_date, presence: true

  validates :debit, numericality: true, allow_nil: true
  validates :credit, numericality: true, allow_nil: true

  validate :debit_xor_credit

  scope :sorted, -> { order(:voucher_number, :created_at) }

  private
  def debit_xor_credit
    unless (debit == 0) ^ (credit == 0)
      errors.add(:base, 'Specify debit or credit, but not both')
    end
  end
end
