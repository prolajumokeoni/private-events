require 'rails_helper'

RSpec.describe Event, type: :model do
  it { should have_many(:registers) }
  it { should belong_to(:creator) }
  it { should have_one_attached(:event_photo) }
end
