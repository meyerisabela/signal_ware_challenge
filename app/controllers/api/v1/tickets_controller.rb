class Api::V1::TicketsController < Api::V1::BaseController
  def create
    @user_id = params[:user_id]
    @title = params[:title]
    @tags = params[:tags]

    if ticket_params? && tags_params?
      if create_ticket && create_tag
        render json: { success: "Your ticket #{@ticket.title} was created!" }, status: 200
      else
        render json: { error: 'Something went wrong processing your request. Please try again.' }, status: 400
      end
    else
      render json: { error: 'Your request should have user_id, title and can only include max of 4 tags.' }, status: 422
    end
  end

  private

  def create_ticket
    @ticket = Ticket.new(user_id: @user_id, title: @title)
    @ticket.save
  end

  def create_tag
    tags_count = @tags.count
    tag = Tag.new(ticket: @ticket, count: tags_count)
    tag.save
  end

  def ticket_params?
    @user_id && @title
  end

  def tags_params?
    @tags&.count.nil? || @tags&.count < 5
  end
end
