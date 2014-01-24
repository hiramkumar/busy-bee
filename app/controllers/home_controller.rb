class HomeController < ApplicationController
  def index
    
  end
  
  def show
    
  end
  
  def tech
    
  end
  
  def about
    
  end
  
  def contact
    
  end
  
  def mail
    email = params["mail"]
    number = params["phone"]
    recipient = params["name"]
    company = params["company"]
    message = params["story"]
    UserMailer.welcome_email(email,recipient,message,number,company).deliver
    UserMailer.replay_email(email,recipient,message,number,company).deliver
    return if request.xhr?
    flash[:notice] = 'Message sent successfully'
    redirect_to :action => 'contact'
  end
  
  
end
