require "user"
class SignupController < ApplicationController
  
  def index
  end
  
  def create
    puts params
    @user = User.new(params[:login,:email])
  end
end
