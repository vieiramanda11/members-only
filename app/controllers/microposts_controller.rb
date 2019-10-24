# frozen_string_literal: true

class MicropostsController < ApplicationController
  before_action :logged_in?, only: %i[new create]

  def new
    @micropost = Micropost.new
  end

  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash.now[:success] = 'Micropost created!'
      redirect_to root_url
    else
      render 'new'
    end
  end

  def index
    @microposts = Micropost.all
  end

  private

  def micropost_params
    params.require(:micropost).permit(:body, :content)
  end
end
