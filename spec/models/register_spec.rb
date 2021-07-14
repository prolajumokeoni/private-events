require 'rails_helper'

RSpec.describe Register, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:event) }
end