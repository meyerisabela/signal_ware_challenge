require "test_helper"

class TagTest < ActiveSupport::TestCase
  test 'should not save tag if count is bigger than 4' do
    ticket = FactoryBot.create(:ticket)
    tag = Tag.new(ticket: ticket)
    assert_not tag.save, 'Saved the tag with count column more 4'
  end

  test 'should save tag if count less than 5' do
    ticket = FactoryBot.create(:ticket)
    tag = Tag.new(count: rand(1..4), ticket: ticket)
    assert tag.save
  end
end

