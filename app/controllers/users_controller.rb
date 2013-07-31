class UsersController < ApplicationController
	before_filter :current_user, only: [:show]
  before_action :admin, only: [:index]
  	#before_filter :correct_user, only: [:edit, :update]

	def index
      	@users = User.all
    end

   	def show
    		@user = User.find(params[:id])
  	end	


  	private

  	def users_params
    	params.require(:user).permit(:name, :email)
  	end
 end