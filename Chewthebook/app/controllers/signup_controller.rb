require "user"
class SignupController < ApplicationController
  include AuthenticatedSystem
  
  verify :method => :post, :only => [:create]
  
  def index
  end
  
  def create
    #puts params    
    #@user = User.new(params[:login,:email]) 
    @user = User.new(:login=>params[:login],:email=>params[:email],:password=>params[:password],:password_confirmation=>params[:password_confirmation])
    if @user.save
      flash[:notice] = '用户帐号创建成功.'
      #redirect_to :action => 'account/login'
      redirect_back_or_default(:controller => '/login', :action => 'index')
    else
      flash[:notice] = '用户帐号创建失败.'
      render :action => 'index'
    end  
  end 

end
