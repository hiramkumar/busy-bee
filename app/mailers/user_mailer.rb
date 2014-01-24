class UserMailer < ActionMailer::Base
  
  def welcome_email(email,recipient,message,number,company)
    @email = email
    @recipient = recipient
    @message = message
    @number = number
    @company = company
    sub = "Enquiry From Client"
    to = "hiramkumar.au@gmail.com"
    mail(:to => to, :subject => sub, :from => email)
  end
  
  def replay_email(email,recipient,message,number,company)
    @email = email
    @recipient = recipient
    @message = message
    @number = number
    @company = company
    sub = "Auto Response from Busy Bee"
    from = "hiramkumar.au@gmail.com"
    mail(:to => @email, :subject => sub, :from => from)
  end
  
end
