class FeedbacksController < ApplicationController

  def new
  end

  def create
    user = User.new(params.require(:user).permit!)
    feedback = Feedback.new(params.require(:feedback).permit!)
    user.save
    feedback.user_id = user.id
    feedback.save

    render 'thankyou'
  end

end