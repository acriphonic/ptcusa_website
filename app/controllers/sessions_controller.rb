class SessionsController < ApplicationController

  def new
  end

  def create
		user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:password])
			sign_in user
		end
    render 'new'
  end

  def destroy
		sign_out
		render 'new'
	end

end