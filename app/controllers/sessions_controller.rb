class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.authenticate(params[:name], params[:password])

    respond_to do |format|
      if @user
        session[:user_id] = @user.id
        format.html { redirect_to root_url, :notice => "Logged in!" }
        format.xml { render :xml => @user, :status => :created, :location => @user }
        format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new", :notice => "Invalid email or password" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
        format.json  { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    session[:user_id] = nil
    
    respond_to do |format|
      format.html { redirect_to root_url, :notice => "Logged out!" }
      format.xml  { head :ok }
      format.json  { head :ok }
    end
  end
end
