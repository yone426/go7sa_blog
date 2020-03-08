class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def show
  end

  def edit
  end
  
  def update
  end

  def destroy
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :text)
  end

end
