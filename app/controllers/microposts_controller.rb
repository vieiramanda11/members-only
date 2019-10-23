class MicropostsController < ApplicationController
    def new
    end

    def create
    end

    def index
        @user = User.find(params[:id])
        @microposts = @user.microposts.paginate(page: params[])
    end
 
 

end
