class EmailController < ApplicationController

  def index
    puts ok
  end

  def new
    render :nothing => true
  end

  def create
    puts params[:user_name]
    puts params[:user_email]
    puts params[:message]
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'

    respond_to do |format|
      ContactMailer.contact_email(params[:user_name], params[:user_email], params[:message]).deliver


      msg = { :status => "sent"}
  #  format.html { redirect_to @user, notice: 'User was successfully created.' }
      format.json { render :json => msg }
    end

    # render :nothing => true
  end


end
