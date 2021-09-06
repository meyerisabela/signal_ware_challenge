require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test 'should not save ticket without user_id and title' do
    ticket = Ticket.new
    assert_not ticket.save, 'Saved the ticket without a title'
  end
end
