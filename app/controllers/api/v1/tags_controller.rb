class Api::V1::TagsController < Api::V1::BaseController
  def send_higher_count
    highest_tag_count = Tag.highest_count.id
    TagsCount::SendCount.new.call(highest_tag_count)
  end
end
