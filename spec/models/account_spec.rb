require 'rails_helper'

RSpec.describe Account, type: :model do
  subject { Account.new(code: '101', title: 'Cash On Hand', nature: 'Debit') }

  it { should be_valid }
end
