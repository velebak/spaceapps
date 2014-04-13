class FeedsController < ApplicationController

  def index
    @observations = Observation.where(:feed_id => params[:fid])
    @feed = Feed.find(params[:fid])
    @following = Followers.where(:user_id => @feed.user_id)
    @followers = Followers.where(:feed_id => @feed.id)
    if @current_user
      is_following = Followers.where(:feed_id => @feed.id, :user_id => @current_user.id)
      if is_following
        @is_current_user_following = true;
      else
        @is_current_user_following = false;
      end
    end
  end

end
