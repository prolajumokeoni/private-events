require 'rails_helper'

describe 'Event', type: :feature do
  describe 'create event' do
    it 'should include body and location' do
      event = Event.new(title: 'Code conference', day: 'Thursday, 10 Jun 2021')
      expect(event.valid?).to be(false)
    end
    it 'would  be invalid without title' do
      event = Event.new(day: 'Thursday, 10 Jun 2021')
      expect(event.valid?).to be(false)
    end
  end
end
